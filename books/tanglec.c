#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <fcntl.h>

// set this to 3 for further information
#define DEBUG 0

/* forward reference for the C compiler */
int getchunk(char *chunkname);

/* a memory mapped buffer copy of the file */
char *buffer;
int bufsize;

/* return the length of the next line */
int nextline(int i) {
  int j;
  if (i >= bufsize) return(-1);
  for (j=0; ((i+j < bufsize) && (buffer[i+j] != '\n')); j++);
  return(j);
}

/* output the line we need */
int printline(int i, int length) {
  int j;
  for (j=0; j<length; j++) { putchar(buffer[i+j]); }
  printf("\n");
}

/* handle begin{chunk}{chunkname}        */
/* is this chunk name we are looking for? &&
   does the line start with \begin{chunk}? &&
   is the next character a \{ &&
   is the last character after the chunkname a \}
*/
int foundchunk(int i, char *chunkname) {
  if ((strncmp(&buffer[i+14],chunkname,strlen(chunkname)) == 0) &&
      (strncmp(&buffer[i],"\\begin{chunk}",13) == 0) &&
      (buffer[i+13] == '{') &&
      (buffer[i+14+strlen(chunkname)] == '}')) {
    if (DEBUG==3) { printf("foundchunk(%s)\n",chunkname); }
    return(1); 
  }
  return(0);
}

/* handle end{chunk}   */
/* is it really an end? */
int foundEnd(int i, char* chunkname) {
  if ((buffer[i] == '\\') && 
      (strncmp(&buffer[i+1],"end{chunk}",10) == 0)) {
    if (DEBUG==3) { printf("foundEnd(%s)\n",chunkname); }
    return(1); 
  }
  return(0);
}

/* handle getchunk{chunkname} */
/* is this line a getchunk?    */
int foundGetchunk(int i, int linelen) {
  int len;
  if (strncmp(&buffer[i],"\\getchunk{",10) == 0) {
    for(len=0; ((len < linelen) && (buffer[i+len] != '}')); len++);
    return(len-10);
  }
  return(0);
}

/* Somebody did a getchunk and we need a copy of the name */
/* malloc string storage for a copy of the getchunk name  */
char *getChunkname(int k, int getlen) {
  char *result = (char *)malloc(getlen+1);
  strncpy(result,&buffer[k+10],getlen);
  result[getlen]='\0';
  return(result);
}
  
/* print lines in this chunk, possibly recursing into getchunk */
int printchunk(int i, int chunklinelen, char *chunkname) {
  int j;
  int k;
  int linelen;
  char *getname;
  int getlen = 0;
  if (DEBUG==3) { printf("===   \\start{%s}   ===\n",chunkname); }
  for (k=i+chunklinelen+1; ((linelen=nextline(k)) != -1); ) {
    if ((getlen=foundGetchunk(k,linelen)) > 0) {
       getname = getChunkname(k,getlen);
       getchunk(getname);
       free(getname);
       k=k+getlen+12l;
    } else {
      if ((linelen >= 11) && (foundEnd(k,chunkname) == 1)) {
      if (DEBUG==3) { printf("===   \\end{%s}   ===\n",chunkname); }
      return(k+12);
    } else {
      if (DEBUG==2) { 
        printf("======== printchunk else %d %d\n",k,linelen); 
      }
      printline(k,linelen);
      k=k+linelen+1;
    }
  }}
  if (DEBUG==2) {
     printf("=================\\out{%s} %d\n",chunkname,k); 
  }
  return(k);
}

/* find the named chunk and call printchunk on it */
int getchunk(char *chunkname) {
  int i;
  int j;
  int linelen;
  int chunklen = strlen(chunkname);
  if (DEBUG==3) { printf("getchunk(%s)\n",chunkname); }
  for (i=0; ((linelen=nextline(i)) != -1); ) {
    if (DEBUG==2) { 
      printf("----"); printline(i,linelen); printf("----\n"); 
    }
    if ((linelen >= chunklen+15) && (foundchunk(i,chunkname) == 1)) {
      if (DEBUG==2) {
         fprintf(stderr,"=================\\getchunk(%s)\n",chunkname); 
      }
      i=printchunk(i,linelen,chunkname);
    } else {
      i=i+linelen+1;
    }
  }
  if (DEBUG==2) { 
    fprintf(stderr,"=================getchunk returned=%d\n",i); 
  }
  return(i);
}

/* memory map the input file into the global buffer and get the chunk */
int main(int argc, char *argv[]) {
  int fd;
  struct stat filestat;
  if ((argc == 1) || (argc > 3)) { 
    perror("Usage: tangle filename chunkname");
    exit(-1);
  }
  fd = open(argv[1],O_RDONLY);
  if (fd == -1) {
    perror("Error opening file for reading");
    exit(-2);
  }
  if (fstat(fd,&filestat) < 0) {
    perror("Error getting input file size");
    exit(-3);
  }
  bufsize = (int)filestat.st_size;
  buffer = mmap(0,filestat.st_size,PROT_READ,MAP_SHARED,fd,0);
  if (buffer == MAP_FAILED) {
    close(fd);
    perror("Error reading the file");
    exit(-4);
  }
  if (argc == 2) {
    getchunk("*");
  } else {
    getchunk(argv[2]);
  }
  close(fd);
  return(0);
}

