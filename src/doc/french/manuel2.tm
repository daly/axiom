<TeXmacs|1.0.3>

<style|generic>

<\body>
  <postscript|utbmlogo400x160.gif|*2/4|*2/4||||>

  \;

  \;

  \;

  \;

  \;

  <assign|page-this-header|Annexe 3>

  <\with|par-mode|center>
    <section|Guide d'utilisation pratique d'Axiom>
  </with>

  \;

  <\with|par-mode|center>
    <postscript|../axiom.png|*2/4|*2/4||||>
  </with>

  \;

  \;

  <assign|page-this-footer|AC20: Utilisation de logiciels libres>

  \;

  \;

  \;

  \;

  \;

  \;

  <\with|par-mode|right>
    CARPENT Quentin

    CONIL Christophe
  </with>

  <page-break>

  <assign|page-this-footer|AC20: Utilisation de logiciels libres>

  \;

  \;

  <\table-of-contents|toc>
    Guide d'utilisation pratique d'Axiom<value|toc-dots><pageref|toc-1>

    <with|par-left|1.5fn|Manipulation du logiciel<value|toc-dots><pageref|toc-2>>

    <with|par-left|3fn|Démarrage d'Axiom<value|toc-dots><pageref|toc-3>>

    <with|par-left|3fn|Fermeture d'une session<value|toc-dots><pageref|toc-4>>

    <with|par-left|1.5fn|Instructions et commandes<value|toc-dots><pageref|toc-5>>

    <with|par-left|3fn|Aide d'Axiom<value|toc-dots><pageref|toc-6>>

    <with|par-left|3fn|Expressions Axiom<value|toc-dots><pageref|toc-7>>

    <with|par-left|3fn|Assignation des variables et des
    fonctions<value|toc-dots><pageref|toc-8>>

    <with|par-left|3fn|Utilisation pratique
    d'Axiom<value|toc-dots><pageref|toc-9>>

    <with|par-left|3fn|Commandes et raccourcis usuels
    :<value|toc-dots><pageref|toc-10>>

    <with|par-left|1.5fn|Récapitulatif de fonctions
    basiques<value|toc-dots><pageref|toc-11>>

    <with|par-left|3fn|Étude de fonction<value|toc-dots><pageref|toc-12>>

    <with|par-left|3fn|Opérateurs élémentaires de
    calcul<value|toc-dots><pageref|toc-13>>

    <with|par-left|1.5fn|Typage des variables dans
    Axiom<value|toc-dots><pageref|toc-14>>

    <with|par-left|3fn|Différents types de
    nombres<value|toc-dots><pageref|toc-15>>

    <with|par-left|3fn|Opérations sur les
    nombres<value|toc-dots><pageref|toc-16>>

    <with|par-left|3fn|Sommes<value|toc-dots><pageref|toc-17>>

    <with|par-left|3fn|Produits<value|toc-dots><pageref|toc-18>>

    <with|par-left|1.5fn|Nombres Complexes<value|toc-dots><pageref|toc-19>>

    <with|par-left|1.5fn|Matrices<value|toc-dots><pageref|toc-20>>

    <with|par-left|3fn|Définition d'une matrice<value|toc-dots><pageref|toc-21>>

    <with|par-left|3fn|Opérations courantes<value|toc-dots><pageref|toc-22>>

    <with|par-left|1.5fn|Fonctions<value|toc-dots><pageref|toc-23>>

    <with|par-left|3fn|Définition et fonctions
    usuelles<value|toc-dots><pageref|toc-24>>

    <with|par-left|3fn|Fonctions définies par morceaux
    <value|toc-dots><pageref|toc-25>>

    <with|par-left|1.5fn|Résolution d'équations<value|toc-dots><pageref|toc-26>>

    <with|par-left|3fn|Résolution d'équations<value|toc-dots><pageref|toc-27>>

    <with|par-left|3fn|Résolution de système
    d'équations<value|toc-dots><pageref|toc-28>>

    <with|par-left|1.5fn|Programmation<value|toc-dots><pageref|toc-29>>

    <with|par-left|3fn|Boucles for<value|toc-dots><pageref|toc-30>>

    <with|par-left|3fn|Boucle while<value|toc-dots><pageref|toc-31>>

    <with|par-left|3fn|Boucle repeat<value|toc-dots><pageref|toc-32>>

    <with|par-left|3fn|Programmation de fonctions<value|toc-dots><pageref|toc-33>>
  </table-of-contents>

  <page-break>

  <\with|par-mode|center>
    <subsection|Manipulation du logiciel>
  </with>

  <subsubsection|Démarrage d'Axiom>

  \ \ \ Axiom est un logiciel de calcul formel, originalement créé pour
  fonctionner en mode console. Cette utilisation se révèle pourtant peu
  pratique, et nécessite donc le lancement d'un programme graphique
  permettant de gérer une session Axiom. Dans une console, en environnement
  graphique, lancer TeX-macs par la commande:\ 

  da3@da3:~$ texmacs

  \ \ \ Une fois celui-ci lancé changez les préférences pour avoir le
  logiciel en français: ( Edit \| Preferences \| Language \| French ), puis
  insérer une zone de script Axiom : ( Texte \| Session \| Axiome ) Un carré
  bleu, avec une flèche rouge apparaît. La zone de frappe se situe après la
  flèche rouge.

  <subsubsection|Fermeture d'une session>

  \ \ \ Sous texmacs, utiliser simplement le bouton de fermeture. Attention,
  une demande de confirmation apparaît dans la barre d'état.

  En mode console, utiliser  )quit  \ puis confirmez.

  <\with|par-mode|center>
    <subsection|Instructions et commandes>
  </with>

  <subsubsection|Aide d'Axiom>

  \ \ \ On ne peut donner toutes les fonctions qui régissent le programme
  Axiom. Il est souvent nécessaire de rechercher une fonction grâce au
  système intégré. Pour cela, la démarche est la suivante:

  1) On cherche par exemple à étudier une fonction complexe. On fait donc une
  recherche sur  complex . Pour afficher tous les noms de fonction
  contenant ce terme, on utilise la commande:

  (1) -\<gtr\> )what op complex

  2) Une fois la série de fonctions affichées, il reste à choisir la fonction
  dont le nom se rapproche le plus de l'opération désirée. Utilisons le
  résultat complexSolve, qui, à première vue sert à résoudre des équations
  complexes. On utilise la commande

  (1) -\<gtr\> )display op complexIntegrate

  pour afficher les paramètres à fournir à la fonction. Il peut arriver
  qu'une fonction puisse prendre en compte plusieurs paramètres de type
  différents. Axiom se charge de choisir la fonction qui convient.

  \ \ \ Il n'existe à l'heure actuelle pas d'explication  textuée  du
  fonctionnement fonctions.

  \ \ \ ATTENTION: Axiom est un logiciel  case-sensitive , il fait
  attention à la casse des noms des fonctions entrées. Ainsi,
  complexIntegrate est différent de Complexintegrate ( qui renverra une
  erreur ).<assign|page-nr|1>

  <page-break>

  <subsubsection|Expressions Axiom>

  \ \ \ Il existe quantité d'expression Axiom: Affectations, fonctions,
  calculs directs...

  \ \ \ Chacune de ces expression est interprétée par Axiom lorsqu'elle est
  écrite après son invite --\<gtr\> , et validée par la touche entrée. Un
  calcul simple se fait sans suffixe. Un calcul ne devant pas être affiché se
  terminera pas un point-virgule.

  --\<gtr\> sin(%pi/3) va retourner <with|mode|math|math-display|true|<frac|<sqrt|3>|2>>

  alors que

  --\<gtr\> sin(%pi/3); Ne retournera rien

  <subsubsection|Assignation des variables et des fonctions>

  L'assignation des variables se fait par la commande :=

  --\<gtr\> a:=7 \ \ \ \ \ \ enregistre 7 dans a, et transforme le type de a
  de variable vers un entier positif.

  --\<gtr\> )clear properties a \ \ \ \ \ \ \ \ \ \ vide la variable a de son
  contenu, et détruit son type.

  \ \ \ L'assignation des fonctions peut se fait par l'opérateur :=, mais
  cela n'est pas conseillé. En effet définir:

  --\<gtr\> f:=3*x+4

  fonctionne, même lors de la demande d'affichage de f(3), mais elle ne
  prends pas en compte l'ordre des variables. On utilisera plutôt la forme

  f(x,y)==3*x+4*y

  qui permet une définition correcte de la fonction ( De plus la fonction
  sera compilée à l'exécution, et donc bien plus rapide ).

  \ \ \ ATTENTION: on ne peut pas, dans Axiom, faire abstraction, du signe *
  comme c'est le cas dans beaucoup de logiciels de calcul formel. 3x sera
  interprété comme 3(x), 3 étant une fonction. Il est donc nécessaire de
  toujours utiliser la syntaxe correcte: 3*x

  <subsubsection|Utilisation pratique d'Axiom>

  \ \ \ Plusieurs commandes sont pratiques dans l'utilisation d'Axiom:

  % renvoie le résultat du dernier calcul. Ainsi,

  --\<gtr\> %^-1 \ \ \ \ \ \ \ \ \ \ renvoie 1/(résultat précédent)

  \ \ \ On utilise une autre commande, utilise pour transformer les types:

  --\<gtr\> 3/7 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ renvoie 3/7, alors que

  --\<gtr\> 3/7 :: Float \ \ \ \ \ \ \ \ renvoie
  <with|mode|math|math-display|true|0.4285714285714285714>

  On pourra placer des commentaires, avec le préfixe - -\ 

  <\with|par-mode|center>
    <subsubsection|Commandes et raccourcis usuels :>
  </with>

  <\with|par-mode|center>
    <tabular|<tformat|<twith|table-lborder|12>|<twith|table-rborder|12>|<twith|table-bborder|12>|<twith|table-tborder|12>|<cwith|1|-1|1|-1|cell-lborder|1px>|<cwith|1|-1|1|-1|cell-rborder|1px>|<cwith|1|-1|1|-1|cell-bborder|1px>|<cwith|1|-1|1|-1|cell-tborder|1px>|<cwith|1|7|1|2|cell-lsep|5
    px>|<cwith|1|7|1|2|cell-rsep|5 px>|<cwith|1|7|1|2|cell-bsep|5
    px>|<cwith|1|7|1|2|cell-tsep|5 px>|<twith|table-valign|b>|<twith|table-hyphen|n>|<table|<row|<cell|Raccourci>|<cell|Valeur>>|<row|<cell|>|<cell|>>|<row|<cell|%pi>|<cell|<with|mode|math|\<mathpi\>>>>|<row|<cell|%plusInfinity>|<cell|+<with|mode|math|\<infty\>>>>|<row|<cell|%minusInfinity>|<cell|-<with|mode|math|
    \<infty\>>>>|<row|<cell|%e>|<cell|<with|mode|math|\<mathe\>>>>|<row|<cell|%i>|<cell|<with|mode|math|\<mathi\>>>>>>>
  </with>

  \;

  <\with|par-mode|center>
    <\subsection>
      Récapitulatif de fonctions basiques
    </subsection>
  </with>

  \;

  <subsubsection|Étude de fonction>

  \ \ \ Les fonctions ici présentées peuvent être explicitées par l'ajout
  d'un paramètre. Par exemple, integrate(f(x)) est équivalent à
  integrate(f(x),x). On pourra ainsi modifier le second paramètre afin de
  satisfaire les besoins de l'exercice.

  \;

  <\with|par-mode|center>
    <tabular|<tformat|<table|<row|<cell|Utilisation de la
    fonction>|<cell|Effet de la fonction>>|<row|<cell|>|<cell|>>|<row|<cell|>|<cell|>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    f(x)==x*(x + 3)>|<cell|Affection de f(x).>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    f(5/3) :: Float>|<cell|Donne un arrondi de
    f(5/3).>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    expand(f(x))>|<cell|Développe les fonctions
    polynomiales.>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    factor(f(x))>|<cell|Factorise les fonctions
    polynomiales.>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    integrate(f(x))>|<cell|Intègre f(x) en fonction de la variable
    x>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    differentiate(f(x))>|<cell|Calcule la dérivée de l'expression de
    f(x).>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    simplify(f(x))>|<cell|Simplifie l'expression.>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    zeros(f(x))>|<cell|Retourne les racines de la fonction.>>>>>
  </with>

  <subsubsection|Opérateurs élémentaires de calcul>

  Axiom connaît toutes les fonctions classiques dont les valeurs en x sont
  données par

  <\with|par-first|20px>
    exp(x), log(x), log10(x), round(x), sqrt(x), abs(x), floor(x)
  </with>

  mais aussi les fonctions trigonométriques:

  <\with|par-first|20px>
    sin(x), cos(x), tan(x), cot(x), sinh(x), cosh(x), tanh(x), coth(x)
  </with>

  et leurs fonctions inverses

  <\with|par-first|20px>
    asin(x), acos(x), atan(x), acot(x), asinh(x), acosh(x), atanh(x),
    acoth(x)
  </with>

  \;

  Fonctions de dénombrement : factorial(n), binomial(n,p)

  \;

  \ \ \ Outre les opérateurs usuels d'égalité et d'inégalité = , \<less\>,
  \<less\>=, \<gtr\>, \<gtr\>=, Axiom reconnaît les opérateurs arithmétiques
  suivants:

  \;

  <tabular|<tformat|<cwith|1|-1|1|-1|cell-lborder|1px>|<cwith|1|-1|1|-1|cell-rborder|1px>|<cwith|1|-1|1|-1|cell-bborder|1px>|<cwith|1|-1|1|-1|cell-tborder|1px>|<cwith|10|10|1|3|cell-lborder|1px>|<cwith|10|10|1|3|cell-rborder|1px>|<cwith|10|10|1|3|cell-bborder|1px>|<cwith|10|10|1|3|cell-tborder|1px>|<cwith|1|10|1|3|cell-lsep|5px>|<cwith|1|10|1|3|cell-rsep|5px>|<cwith|1|10|1|3|cell-bsep|5px>|<cwith|1|10|1|3|cell-tsep|5px>|<table|<row|<cell|Opérateur>|<cell|Notation>|<cell|Exemple>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|Addition>|<cell|+>|<cell|3+4=7>>|<row|<cell|Soustraction>|<cell|->|<cell|3-7=-4>>|<row|<cell|Multiplication>|<cell|*>|<cell|3*7=21>>|<row|<cell|Division>|<cell|/>|<cell|21/7=3>>|<row|<cell|Puissance>|<cell|**
  ou ^>|<cell|2^10 ou 2**(2x+1) Note: En programmation, ^ ne fonctionne
  pas>>|<row|<cell|Quotient>|<cell|quo>|<cell|7 quo 3 =
  2>>|<row|<cell|Reste>|<cell|rem>|<cell|7 rem 3 = 1>>|<row|<cell|Négation
  Logique>|<cell|~>|<cell|if x ~= 3 then... >>>>>

  <page-break>

  <\with|par-mode|center>
    <subsection|Type des variables dans Axiom>
  </with>

  <subsubsection|Différents types de nombres>

  <\with|par-first|10px>
    Integer : Ensemble des entiers en base 10
  </with>

  <\with|par-first|30px>
    PositiveInteger : Ensemble des entiers positif
  </with>

  <\with|par-first|30px>
    NonNegativeInteger : Ensemble des entiers positifs ou nuls
  </with>

  <\with|par-first|30px>
    <\with|par-first|10px>
      Fraction Integer: \ Ensemble des Fractions
    </with>
  </with>

  <\with|par-first|10px>
    Float : Ensemble des réels à virgule
  </with>

  Notes:\ 

  <\itemize-dot>
    <item>Si la fonction contient <with|mode|math|\<mathpi\>>, ou d'autres
    éléments spéciaux, elle prend comme type le nom de l'élément spécial.
    3*%pi+5/7 est de type Pi.
  </itemize-dot>

  <\itemize-dot>
    <item>float(a,b) avec a et b 2 entiers, représente le nombre réel
    a*10<with|mode|math|<rsup|b>>

    <item>Les fonctions spéciales, comme ln, sont du type de leur argument.
    log(7) sera de type Expression Integer.
  </itemize-dot>

  <subsubsection|Opérations sur les nombres>

  \ \ \ Comme dis précédemment, la conversion en réel se fait par :: Float.
  Cette syntaxe peut être utilisée en milieu de calcul:

  --\<gtr\> sin(1::Float) sera de type Float et non de type Expression
  Integer. Le résultat renvoyé est donc manipulable, contrairement à sa
  version Entière.

  --\<gtr\> factors(n) renvoie sous la forme d'une liste d'enregistrements la
  décomposition en facteurs premiers de n

  --\<gtr\> gcd(a,b) renvoie le plus grand commun diviseur de a et b

  --\<gtr\> lcm(a,b) retourne le plus petit commun multiple de a et b

  --\<gtr\> prime?(a) retourne true ou false suivant que a est premier ou
  non.

  <subsubsection|Sommes>

  \ \ \ On utilisera la fonction sum, pour effectuer les sommes de séries.

  sum(expression(k),k=a..b) retourne la somme des termes dépendants de k, k
  variant entre a et b inclus.

  a et b sont des entiers positifs. Les bornes infinies ne sont pas
  applicables.

  Exemples :\ 

  sum(k^2, k=1..100) retourne la somme des carrés entre 1 et 100

  sum(k^2,k=1..n) retourne le terme général de la somme, pour tout n.

  <subsubsection|Produits>

  product(k^2,k=1..100) retourne le produit des carrés entre 1 et
  100<line-break><page-break>

  <\with|par-mode|center>
    <subsection|Nombres Complexes>
  </with>

  \;

  Les nombres complexes doivent être écris sous la forme a+b*%i

  <\with|par-mode|center>
    <tabular|<tformat|<cwith|1|-1|1|-1|cell-lborder|1px>|<cwith|1|-1|1|-1|cell-rborder|1px>|<cwith|1|-1|1|-1|cell-bborder|1px>|<cwith|1|-1|1|-1|cell-tborder|1px>|<cwith|1|-1|1|-1|cell-lsep|5px>|<cwith|1|-1|1|-1|cell-rsep|5px>|<cwith|1|-1|1|-1|cell-bsep|5px>|<cwith|1|-1|1|-1|cell-tsep|5px>|<twith|table-valign|c>|<twith|table-halign|l>|<cwith|1|-1|1|-1|cell-hpart|10>|<table|<row|<cell|--\<gtr\>
    z:=a+b*%i>|<cell|Définition de z>>|<row|<cell|>|<cell|>>|<row|<cell|--\<gtr\>
    real(z)=a >|<cell|Retourne la partie réelle de z>>|<row|<cell|--\<gtr\>
    imag(z)=b >|<cell|Retourne la partie complexe de z>>|<row|<cell|--\<gtr\>
    argument(z) >|<cell|Retourne l'argument de z>>|<row|<cell|--\<gtr\>
    conjugate(z)=a-b*%i>|<cell|Retourne le conjugué de
    z>>|<row|<cell|-\<gtr\> z :: Complex Float>|<cell|Arrondi les
    coefficients de z>>>>>
  </with>

  <\with|par-mode|center>
    <subsection|Matrices>
  </with>

  <subsubsection|Définition d'une matrice>

  M := matrix [[1, 2, 3, 4] , [3, 5, 7, 9] , [6, 10, 14, 18]] crée la matrice
  <with|mode|math|math-display|true|<left|[><tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<table|<row|<cell|1>|<cell|2>|<cell|3>|<cell|4>>|<row|<cell|3>|<cell|5>|<cell|7>|<cell|9>>|<row|<cell|6>|<cell|10>|<cell|14>|<cell|18>>>>><right|]>>
  et l'enregistre dans M.

  <subsubsection|Opérations courantes>

  --\<gtr\> Soient M1 et M2, 2 matrices supportant les opérations suivantes:

  --\<gtr\> M1(3,4):=5 modifie la valeur de la 3eme ligne 4eme colonne, en
  lui affectant 5

  --\<gtr\> M1+M2 retourne la somme des 2 matrices M1 et M2.

  --\<gtr\> M1*M2 retourne le produit matriciel des 2 matrices.

  --\<gtr\> M1^3 retourne le produit matriciel M1*M1*M1.

  --\<gtr\> M1^-1 retourne la matrice inverse de M1, si celle ci est
  inversible.

  --\<gtr\> trace(M1) retourne la trace de M1

  --\<gtr\> determinant(M1) retourne le déterminant de M1

  --\<gtr\> eigenvalues(M1) retourne les valeurs propres de M1

  --\<gtr\> eigenvectors(M1) retourne les vecteurs propres associées de M1

  --\<gtr\> characteristicPolynomial(M1,x) retourne le polynôme
  caractéristique de M1<page-break>

  <\with|par-mode|center>
    <subsection|Fonctions>
  </with>

  <subsubsection|Définition et fonctions usuelles>

  \ \ \ Comme vu précédemment, la définition d'une fonction se fait par :

  --\<gtr\> f(x,y,z,t)==x**2+3*y+7*z+0*t

  \ \ \ On peut à partir de cette fonction, utiliser diverses fonctions: en
  calculer les limites, faire des intégrations, calculer des dérivées...

  Développement limité:

  \ \ \ On pose tout d'abord le degré du développement à calculer ( par
  exemple degré 4 )

  --\<gtr\> )set stream calculate 4\ 

  puis on cherche le développement:

  -\<gtr\> \ series(f(x),x=0,4) donne le développement limité de f(x) à
  l'ordre 4 en x=0

  --\<gtr\> )set stream calculate 5

  -\<gtr\> \ series(f(x),x=%plusInfinity,5) donne le développement limité de
  f(x) à l'ordre 5 en x=+<with|mode|math|\<infty\>>

  <subsubsection|Fonctions définies par morceaux >

  \ \ \ On fait appel à des notions de programmation. On définit la fonction
  comme suit:

  --\<gtr\> f(x) == if abs(x) \<less\> 1 then 1 else 1/x

  La programmation est logique, on peut imbriquer des conditions. Les
  fonctions habituelles ne fonctionnent pas avec ces fonctions définies.

  <\with|par-mode|center>
    <subsection|Résolution d'équations>
  </with>

  <subsubsection|Résolution d'équations>

  \ \ \ On utilise pour résoudre des équation la commande solve(expresssion,
  variable)

  --\<gtr\> solve(x^4+1= 0, x) résout l'équation suivant la variable x

  --\<gtr\> solve(sin(x)=0,x) résout l'équation suivant la variable x

  On peut remarquer que cette dernière résolution d'équation ne donne que la
  solution 0.

  <subsubsection|Résolution de système d'équations>

  \ \ \ La résolution de système d'équation se fait aussi par l'intermédiaire
  de la fonction solve. Pour un système de la forme:

  <tabular|<tformat|<table|<row|<cell|a*x+b*y=c>|<cell|>|<cell|a*x+b*y-c=0>>|<row|<cell|>|<cell|On
  utilisera le système sans second membre
  associé>|<cell|>>|<row|<cell|d*b+e*y=f>|<cell|>|<cell|d*x+e*y-f=0>>>>>

  puis la commande solve([expression1,expression2,..,expressionn],[x<with|mode|math|<rsub|1>>,x<with|mode|math|<rsub|2>>..x<with|mode|math|<rsub|n>>])

  --\<gtr\> solve([a*x+b*y-c,d*b+e*y-f],[x,y])

  \;

  La résolutions d'inéquations, ainsi que la résolution dans Z, n'est pas
  applicable.<page-break>

  <\with|par-mode|center>
    <subsection|Programmation>
  </with>

  \;

  \ \ \ Attention: L'utilisation des boucles ci-dessous implique
  obligatoirement leur présence dans un fichier de commandes. L'utilisation
  directe en ligne de commande n'utilise pas la même structure, et est
  partiquement inutilisable.

  <subsubsection|Boucles for>

  \ \ \ L'utilisation de boucle for se fait grâce à la syntaxe

  --\<gtr\> for <with|font-shape|italic|Variable> in
  <with|font-shape|italic|Intervalle> repeat
  <with|font-shape|italic|Instructions>

  On peut ajouter un test en plus, dans une boucle for

  --\<gtr\> for <with|font-shape|italic|Variable> in
  <with|font-shape|italic|Intervalle> \| <with|font-shape|italic|test> repeat
  <with|font-shape|italic|Instructrions>

  Exemples:

  <tabular|<tformat|<table|<row|<cell|--\<gtr\>>|<cell|for i in 1..10
  repeat>|<cell|- - Définition de la boucle>>|<row|<cell|>|<cell|
  \ \ \ \ \ ~prime?(i) =\<gtr\> iterate>|<cell|- - Test. Si i n'est pas
  premier, iterate ( recommencer la boucle)>>|<row|<cell|>|<cell|
  \ \ \ \ \ output(i)>|<cell|- - Afficher
  i>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|--\<gtr\>>|<cell|for i in
  1..10 \| prime?(i) repeat>|<cell|>>|<row|<cell|>|<cell|
  \ \ \ \ \ \ output(i)>|<cell|>>>>>

  \ \ \ Ces 2 boucles renvoient les entiers premiers entre 1 et 10.

  \ \ \ La commande iterate sert à revenir au début de la boucle, sans
  exécuter ce qui suit, la commande break sert à sortir de la boucle.

  --\<gtr\> for w in ["Vive", "les", "boucles", "for!"] repeat output(w)

  \ \ \ Cette boucle affichera chaque composant de la liste sur une ligne
  séparée. Attention, dans TeXmacs, ce résultat ne sera pas formaté.

  <subsubsection|Boucle while>

  \ \ \ La boucle while a exactement le même fonctionnement et la même
  structure que la boucle for.

  --\<gtr\> while <with|font-shape|italic|Expression> repeat
  <with|font-shape|italic|Instructions>

  Exemple

  --\<gtr\> x := 1; y := 1\ 

  \ \ \ \ \ while x \<less\>4 and y \<less\>10 repeat\ 

  \ \ \ \ \ \ \ \ \ \ \ \ output [x,y]\ 

  \ \ \ \ \ \ \ \ \ \ \ \ x := x + 1\ 

  \ \ \ \ \ \ \ \ \ \ \ \ y := y + 2

  <subsubsection|Boucle repeat>

  \ \ \ La boucle repeat sert à répéter un nombre indéfini de fois une
  expression, jusqu'à ce qu'elle rencontre un break.

  <page-break>

  Exemple:

  --\<gtr\> i := 1\ 

  \ \ \ \ \ repeat

  \ \ \ \ \ \ \ \ if i\<gtr\>4 the break

  \ \ \ \ \ \ \ \ output(i)

  \ \ \ \ \ \ \ \ i := i+1

  \;

  <subsubsection|Programmation de fonctions>

  \ \ \ Il est possible dans Axiom de créer et de compiler une suite
  d'instructions logique, afin d'étudier par exemple une suite. Cette
  programmation ne se fait pas en général, par l'intermédiaire de la ligne de
  commande. La démarche est la suivante :\ 

  <\itemize-dot>
    <item>Création d'un fichier texte vide, d'extension .input ( par exemple
    exo1.input )

    <item>Définition de la structure du programme

    <item>Ecriture du code

    <item>Chargement dans Axiom

    <item>Execution\ 
  </itemize-dot>

  La structure de ce fichier texte est particulière. Etudions deux exemples:

  \;

  <with|font-series|bold|Exemple 1: >

  \ \ \ Affiche les n premiers nombres premiers, et retourne le n-ième.

  \;

  <\code>
    <tabular|<tformat|<cwith|1|18|1|1|cell-lborder|1px>|<table|<row|<cell|prime
    : Integer -\<gtr\> Integer \ \ \ \ \ \ >>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|pri<verbatim|>me
    n ==>>|<row|<cell|>>|<row|<cell| \ \ i := 0>>|<row|<cell| \ \ x :=
    0>>|<row|<cell| \ \ while not ( i = n )
    repeat>>|<row|<cell|>>|<row|<cell| \ \ \ \ \ while not prime?(x)
    repeat>>|<row|<cell| \ \ \ \ \ \ \ \ x := x+1>>|<row|<cell|>>|<row|<cell|
    \ \ \ \ \ print(x)>>|<row|<cell| \ \ \ \ \ i:=i+1>>|<row|<cell|
    \ \ \ \ \ x:=x+1>>|<row|<cell| \ \ x:=x-1>>|<row|<cell|
    \ \ x>>|<row|<cell| \ \ \ \ \ \ \ \ \ \ \ \ \ \ >>>>><tabular|<tformat|<table|<row|<cell|--
    On définit le nom de la fonction (prime), >>|<row|<cell|-- suivi de \ ':'
    puis du type de l'argument>>|<row|<cell|-- de '-\<gtr\>' et enfin du type
    renvoyé>>|<row|<cell|>>|<row|<cell|-- L'argument passé à la fonction sera
    >>|<row|<cell|-- enregistré dans n>>|<row|<cell|-- On affecte différentes
    valeurs>>|<row|<cell|>>|<row|<cell|-- Première boucle. Notons qu'on
    aurait pu >>|<row|<cell|-- écrire while i ~= n repeat>>|<row|<cell|-- On
    remarque que l'indentation est très>>|<row|<cell|-- importante. C'est
    elle qui définit>>|<row|<cell|-- la présence dans la boucle ou
    non.>>|<row|<cell|>>|<row|<cell|-- On affiche la valeur, on augmente les
    variables>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|-- On retourne x (
    valeur seule sur une ligne )>>|<row|<cell|>>>>>
  </code>

  \;

  <with|font-series|bold|Exemple 2: >

  \ \ \ Définition de la somme de la suite<with|mode|math|
  S<rsub|2=><big|sum>v><with|mode|math|<rsub|n>>=
  <with|mode|math|><with|mode|math|<frac|1|1>-(<frac|1|2>+<frac|1|4>)+<frac|1|3>-(<frac|1|6>+<frac|1|8>)\<ldots\>.><with|mode|math|>

  \;

  On remplace ici les espaces par des _, afin de bien voir l'indentation du
  programme

  \;

  <\code>
    <tabular|<tformat|<cwith|1|11|1|1|cell-lborder|1px>|<table|<row|<cell|S2
    : Integer -\<gtr\> Fraction Integer>>|<row|<cell|>>|<row|<cell|S2 n
    ==>>|<row|<cell|___if n = 1 then >>|<row|<cell|_________1>>|<row|<cell|______else>>|<row|<cell|_________if
    even?(n) then>>|<row|<cell|_______________-(1/(2*n-2+1_>>|<row|<cell|
    \ \ \ \ \ \ \ \ \ \ \ \ \ \ /(2*n))+ S2 (n-1)
    >>|<row|<cell|____________else>>|<row|<cell|_______________1/n+S2
    (n-1)>>>>><tabular|<tformat|<table|<row|<cell|-- Ici le type renvoyé est
    différent >>|<row|<cell|-- du type fourni.>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|--
    On retourne 1 si la condition est vraie.>>|<row|<cell|-- Le else doit se
    situer indenté face au if.>>|<row|<cell|>>|<row|<cell|-- On utilise ici
    une stucture récursive>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>>>>
  </code>

  \ \ \ \ \ \ 

  \ \ \ Une fois la structure du programme créée, il suffit d'enregistrer le
  travail dans le répertoire utilisateur, et d'utiliser la commande

  --\<gtr\> )read exo1.input ( à supposer que le nom de fichier soit
  exo1.input)

  Puis de lancer la commande

  --\<gtr\> S2 8 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

  si on veut calculer la somme de la série de l'exemple 2 au rang 8.

  L'utilisation de plusieurs variables est tout à fait possible, et se fait
  intuitivement.
</body>

<\initial>
  <\collection>
    <associate|page-show-hf|true>
    <associate|page-reduce-right|0mm>
    <associate|page-reduce-bot|0mm>
    <associate|page-breaking|optimal>
    <associate|sfactor|10>
    <associate|page-top|30mm>
    <associate|page-type|a4>
    <associate|page-right|30mm>
    <associate|par-width|150mm>
    <associate|page-bot|30mm>
    <associate|language|french>
    <associate|page-width|2129920unit>
    <associate|page-even|30mm>
    <associate|info-flag|short>
    <associate|page-medium|paper>
    <associate|page-reduce-left|0mm>
    <associate|page-height|1745920unit>
    <associate|page-odd|30mm>
    <associate|page-reduce-top|0mm>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|toc-40|<tuple|<uninit>|2>>
    <associate|toc-70|<tuple|<uninit>|3>>
    <associate|toc-90|<tuple|<uninit>|8>>
    <associate|toc-80|<tuple|<uninit>|4>>
    <associate|toc-20|<tuple|<uninit>|6>>
    <associate|toc-50|<tuple|<uninit>|6>>
    <associate|toc-30|<tuple|<uninit>|8>>
    <associate|toc-10|<tuple|<uninit>|3>>
    <associate|toc-60|<tuple|<uninit>|3>>
    <associate|toc-41|<tuple|<uninit>|3>>
    <associate|toc-11|<tuple|<uninit>|3>>
    <associate|toc-61|<tuple|<uninit>|3>>
    <associate|toc-51|<tuple|<uninit>|6>>
    <associate|toc-91|<tuple|<uninit>|8>>
    <associate|toc-81|<tuple|<uninit>|4>>
    <associate|toc-71|<tuple|<uninit>|3>>
    <associate|toc-31|<tuple|<uninit>|8>>
    <associate|toc-21|<tuple|<uninit>|6>>
    <associate|toc-92|<tuple|<uninit>|8>>
    <associate|toc-82|<tuple|<uninit>|5>>
    <associate|toc-72|<tuple|<uninit>|3>>
    <associate|toc-32|<tuple|<uninit>|8>>
    <associate|toc-22|<tuple|<uninit>|6>>
    <associate|toc-12|<tuple|<uninit>|3>>
    <associate|toc-42|<tuple|<uninit>|3>>
    <associate|toc-52|<tuple|<uninit>|6>>
    <associate|toc-62|<tuple|<uninit>|3>>
    <associate|toc-93|<tuple|<uninit>|8>>
    <associate|toc-83|<tuple|<uninit>|5>>
    <associate|toc-73|<tuple|<uninit>|3>>
    <associate|toc-33|<tuple|<uninit>|9>>
    <associate|toc-23|<tuple|<uninit>|7>>
    <associate|toc-13|<tuple|<uninit>|4>>
    <associate|toc-43|<tuple|<uninit>|4>>
    <associate|toc-53|<tuple|<uninit>|6>>
    <associate|toc-63|<tuple|<uninit>|3>>
    <associate|toc-94|<tuple|<uninit>|9>>
    <associate|toc-84|<tuple|<uninit>|6>>
    <associate|toc-74|<tuple|<uninit>|4>>
    <associate|toc-34|<tuple|<uninit>|2>>
    <associate|toc-24|<tuple|<uninit>|7>>
    <associate|toc-14|<tuple|<uninit>|5>>
    <associate|toc-44|<tuple|<uninit>|4>>
    <associate|toc-54|<tuple|<uninit>|7>>
    <associate|toc-64|<tuple|<uninit>|4>>
    <associate|toc-85|<tuple|<uninit>|7>>
    <associate|toc-95|<tuple|<uninit>|9>>
    <associate|toc-75|<tuple|<uninit>|4>>
    <associate|toc-25|<tuple|<uninit>|7>>
    <associate|toc-15|<tuple|<uninit>|5>>
    <associate|toc-35|<tuple|<uninit>|2>>
    <associate|toc-45|<tuple|<uninit>|4>>
    <associate|toc-55|<tuple|<uninit>|7>>
    <associate|toc-65|<tuple|<uninit>|2>>
    <associate|toc-96|<tuple|<uninit>|2>>
    <associate|toc-86|<tuple|<uninit>|7>>
    <associate|toc-76|<tuple|<uninit>|2>>
    <associate|toc-26|<tuple|<uninit>|7>>
    <associate|toc-16|<tuple|<uninit>|5>>
    <associate|toc-36|<tuple|<uninit>|3>>
    <associate|toc-46|<tuple|<uninit>|5>>
    <associate|toc-56|<tuple|<uninit>|7>>
    <associate|toc-66|<tuple|<uninit>|4>>
    <associate|toc-57|<tuple|<uninit>|2>>
    <associate|toc-77|<tuple|<uninit>|4>>
    <associate|toc-87|<tuple|<uninit>|7>>
    <associate|toc-67|<tuple|<uninit>|4>>
    <associate|toc-27|<tuple|<uninit>|7>>
    <associate|toc-17|<tuple|<uninit>|5>>
    <associate|toc-37|<tuple|<uninit>|2>>
    <associate|toc-47|<tuple|<uninit>|5>>
    <associate|toc-97|<tuple|<uninit>|3>>
    <associate|toc-88|<tuple|<uninit>|7>>
    <associate|toc-78|<tuple|<uninit>|4>>
    <associate|toc-28|<tuple|<uninit>|7>>
    <associate|toc-18|<tuple|<uninit>|5>>
    <associate|toc-38|<tuple|<uninit>|3>>
    <associate|toc-48|<tuple|<uninit>|5>>
    <associate|toc-58|<tuple|<uninit>|3>>
    <associate|toc-68|<tuple|<uninit>|2>>
    <associate|toc-98|<tuple|<uninit>|3>>
    <associate|toc-89|<tuple|<uninit>|7>>
    <associate|toc-79|<tuple|<uninit>|2>>
    <associate|toc-69|<tuple|<uninit>|3>>
    <associate|toc-19|<tuple|<uninit>|6>>
    <associate|toc-39|<tuple|<uninit>|3>>
    <associate|toc-29|<tuple|<uninit>|8>>
    <associate|toc-49|<tuple|<uninit>|6>>
    <associate|toc-59|<tuple|<uninit>|3>>
    <associate|toc-99|<tuple|<uninit>|3>>
    <associate|toc-100|<tuple|<uninit>|3>>
    <associate|toc-110|<tuple|<uninit>|7>>
    <associate|toc-120|<tuple|<uninit>|9>>
    <associate|toc-101|<tuple|<uninit>|3>>
    <associate|toc-111|<tuple|<uninit>|7>>
    <associate|toc-121|<tuple|<uninit>|9>>
    <associate|toc-102|<tuple|<uninit>|4>>
    <associate|toc-112|<tuple|<uninit>|7>>
    <associate|toc-122|<tuple|<uninit>|9>>
    <associate|toc-103|<tuple|<uninit>|4>>
    <associate|toc-123|<tuple|<uninit>|9>>
    <associate|toc-113|<tuple|<uninit>|7>>
    <associate|toc-104|<tuple|<uninit>|4>>
    <associate|toc-114|<tuple|<uninit>|8>>
    <associate|toc-124|<tuple|<uninit>|10>>
    <associate|toc-105|<tuple|<uninit>|5>>
    <associate|toc-115|<tuple|<uninit>|8>>
    <associate|toc-125|<tuple|<uninit>|10>>
    <associate|toc-106|<tuple|<uninit>|5>>
    <associate|toc-116|<tuple|<uninit>|8>>
    <associate|toc-126|<tuple|<uninit>|10>>
    <associate|toc-107|<tuple|<uninit>|5>>
    <associate|toc-117|<tuple|<uninit>|8>>
    <associate|toc-127|<tuple|<uninit>|10>>
    <associate|toc-108|<tuple|<uninit>|6>>
    <associate|toc-118|<tuple|<uninit>|9>>
    <associate|toc-128|<tuple|<uninit>|11>>
    <associate|toc-109|<tuple|<uninit>|7>>
    <associate|toc-119|<tuple|<uninit>|9>>
    <associate|toc-1|<tuple|<uninit>|1>>
    <associate|toc-2|<tuple|<uninit>|1>>
    <associate|toc-3|<tuple|<uninit>|1>>
    <associate|toc-4|<tuple|<uninit>|1>>
    <associate|toc-5|<tuple|<uninit>|1>>
    <associate|toc-6|<tuple|<uninit>|1>>
    <associate|toc-7|<tuple|<uninit>|2>>
    <associate|toc-8|<tuple|<uninit>|2>>
    <associate|toc-9|<tuple|<uninit>|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      Guide d'utilisation pratique d'Axiom<value|toc-dots><pageref|toc-1>

      <with|par-left|<quote|1.5fn>|Manipulation du
      logiciel<value|toc-dots><pageref|toc-2>>

      <with|par-left|<quote|3fn>|Démarrage
      d'Axiom<value|toc-dots><pageref|toc-3>>

      <with|par-left|<quote|3fn>|Fermeture d'une
      session<value|toc-dots><pageref|toc-4>>

      <with|par-left|<quote|1.5fn>|Instructions et
      commandes<value|toc-dots><pageref|toc-5>>

      <with|par-left|<quote|3fn>|Aide d'Axiom<value|toc-dots><pageref|toc-6>>

      <with|par-left|<quote|3fn>|Expressions
      Axiom<value|toc-dots><pageref|toc-7>>

      <with|par-left|<quote|3fn>|Assignation des variables et des
      fonctions<value|toc-dots><pageref|toc-8>>

      <with|par-left|<quote|3fn>|Utilisation pratique
      d'Axiom<value|toc-dots><pageref|toc-9>>

      <with|par-left|<quote|3fn>|Commandes et raccourcis usuels
      :<value|toc-dots><pageref|toc-10>>

      <with|par-left|<quote|1.5fn>|Récapitulatif de fonctions
      basiques<value|toc-dots><pageref|toc-11>>

      <with|par-left|<quote|3fn>|Étude de
      fonction<value|toc-dots><pageref|toc-12>>

      <with|par-left|<quote|3fn>|Opérateurs élémentaires de
      calcul<value|toc-dots><pageref|toc-13>>

      <with|par-left|<quote|1.5fn>|Type des variables dans
      Axiom<value|toc-dots><pageref|toc-14>>

      <with|par-left|<quote|3fn>|Différents types de
      nombres<value|toc-dots><pageref|toc-15>>

      <with|par-left|<quote|3fn>|Opérations sur les
      nombres<value|toc-dots><pageref|toc-16>>

      <with|par-left|<quote|3fn>|Sommes<value|toc-dots><pageref|toc-17>>

      <with|par-left|<quote|3fn>|Produits<value|toc-dots><pageref|toc-18>>

      <with|par-left|<quote|1.5fn>|Nombres
      Complexes<value|toc-dots><pageref|toc-19>>

      <with|par-left|<quote|1.5fn>|Matrices<value|toc-dots><pageref|toc-20>>

      <with|par-left|<quote|3fn>|Définition d'une
      matrice<value|toc-dots><pageref|toc-21>>

      <with|par-left|<quote|3fn>|Opérations
      courantes<value|toc-dots><pageref|toc-22>>

      <with|par-left|<quote|1.5fn>|Fonctions<value|toc-dots><pageref|toc-23>>

      <with|par-left|<quote|3fn>|Définition et fonctions
      usuelles<value|toc-dots><pageref|toc-24>>

      <with|par-left|<quote|3fn>|Fonctions définies par morceaux
      <value|toc-dots><pageref|toc-25>>

      <with|par-left|<quote|1.5fn>|Résolution
      d'équations<value|toc-dots><pageref|toc-26>>

      <with|par-left|<quote|3fn>|Résolution
      d'équations<value|toc-dots><pageref|toc-27>>

      <with|par-left|<quote|3fn>|Résolution de système
      d'équations<value|toc-dots><pageref|toc-28>>

      <with|par-left|<quote|1.5fn>|Programmation<value|toc-dots><pageref|toc-29>>

      <with|par-left|<quote|3fn>|Boucles for<value|toc-dots><pageref|toc-30>>

      <with|par-left|<quote|3fn>|Boucle while<value|toc-dots><pageref|toc-31>>

      <with|par-left|<quote|3fn>|Boucle repeat<value|toc-dots><pageref|toc-32>>

      <with|par-left|<quote|3fn>|Programmation de
      fonctions<value|toc-dots><pageref|toc-33>>
    </associate>
  </collection>
</auxiliary>