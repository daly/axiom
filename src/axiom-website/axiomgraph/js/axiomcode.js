(function(){

  Renderer = function(canvas){
    canvas = $(canvas).get(0)
    var ctx = canvas.getContext("2d")
    var particleSystem = null
    
    var tencolors = {
      "back"   : "#ECEA81",
      "Black"  : "#000000", "defun"  : "#000000",
      "Brown"  : "#A52A2A",
      "Red"    : "#FF0000", "deffed" : "#FF0000",
      "Orange" : "#FFA500", 
      "Yellow" : "#FFFF00", "reffed" : "#FFFF00",
      "Green"  : "#00FF00", "defref" : "#00FF00",
      "Blue"   : "#0000FF", "calls"  : "#0000FF",
      "Violet" : "#800080",
      "Gray"   : "#808080", "caller" : "#808080",
      "White"  : "#FFFFFF",
    }

    var tencomplement = {
      "back"   : "#13157E",
      "Black"  : "#FFFFFF", "defun"  : "#FFFFFF",
      "Brown"  : "#5AD5D5",
      "Red"    : "#00FFFF", "deffed" : "#00FFFF",
      "Orange" : "#005AFF",
      "Yellow" : "#0000FF", "reffed" : "#0000FF",
      "Green"  : "#FF00FF", "defref" : "#FF00FF",
      "Blue"   : "#FFFF00", "calls"  : "#FFFF00",
      "Violet" : "#7FFF7F",
      "Gray"   : "#7F7F7F", "caller" : "#000000",
      "White"  : "#000000",
    }

    var that = {
      init:function(system){
        particleSystem = system
        // leave some space at the bottom for the param sliders
        // have the ‘camera’ zoom somewhat slowly as the graph unfolds 
        particleSystem.screen({padding:[100, 60, 60, 60], 
                              step:.10}) 
       $(window).resize(that.resize)
       that.resize()
       that.initMouseHandling()
      },

      redraw:function(){
        if (particleSystem===null) return
        ctx.clearRect(0,0, canvas.width, canvas.height)
        ctx.strokeStyle = "#d3d3d3"
        ctx.lineWidth = 1
        ctx.beginPath()
        particleSystem.eachEdge(function(edge, pt1, pt2){
          // edge: {source:Node, target:Node, length:#, data:{}}
          // pt1:  {x:#, y:#}  source position in screen coords
          // pt2:  {x:#, y:#}  target position in screen coords
          var weight = null // Math.max(1,edge.data.border/100)
          var color = null // edge.data.color
          if (!color || (""+color).match(/^[ \t]*$/)) color = null
          if (color!==undefined || weight!==undefined){
            ctx.save() 
            ctx.beginPath()
            ctx.strokeStyle = "#FFFFFF"
            if (!isNaN(weight)) ctx.lineWidth = weight
            if ((edge.source.data.visible === "show") &&
                (edge.target.data.visible === "show")) {
              ctx.strokeStyle = "#000000"
            }else{
              ctx.strokeStyle = "#FFFFFF"
            }
            ctx.fillStyle = null
            ctx.moveTo(pt1.x, pt1.y)
            ctx.lineTo(pt2.x, pt2.y)
            ctx.stroke()
          }else{
            // draw a line from pt1 to pt2
            ctx.moveTo(pt1.x, pt1.y)
            ctx.lineTo(pt2.x, pt2.y)
          }
        })
        ctx.stroke()
        ctx.restore()
        particleSystem.eachNode(function(node, pt){
          // node: {mass:#, p:{x,y}, name:"", data:{}}
          // pt:   {x:#, y:#}  node position in screen coords
          // determine the box size and round off the coords if we'll be 
          // drawing a text label (awful alignment jitter otherwise...)
          var w = ctx.measureText(node.data.label||"").width + 6
          var label = node.data.label
          if (!(label||"").match(/^[ \t]*$/)){
            pt.x = Math.floor(pt.x)
            pt.y = Math.floor(pt.y)
          }else{
            label = null
          }
          // set the background color
           ctx.fillStyle = tencolors[node.data.c]
           ctx.fillRect(pt.x-w/2, pt.y-7, w,14)
          // draw the text
          if (label){
            ctx.font = "bold 11px Arial"
            ctx.textAlign = "center"
            // use the complement of the background color
            ctx.fillStyle = tencomplement[node.data.c] 
            ctx.fillText(label||"", pt.x, pt.y+4)
          }
        })    		
      },
      
      resize:function(){
        var w = $(window).width(),
            h = $(window).height();
        // resize the canvas element to fill the screen
        canvas.width = w; canvas.height = h 
        // inform the system so it can map coords for us
        particleSystem.screenSize(w,h) 
        that.redraw()
      },

      initMouseHandling:function(){
        // no-nonsense drag and drop (thanks springy.js)
      	selected = null;
      	nearest = null;
      	var dragged = null;
        var oldmass = 1

        $(canvas).mousedown(function(e){
      		var pos = $(this).offset();
      		var p = {x:e.pageX-pos.left, y:e.pageY-pos.top}
      		selected = nearest = dragged = particleSystem.nearest(p);

      		if (selected.node !== null){
            // dragged.node.tempMass = 10000
            dragged.node.fixed = true
      		}
      		return false
      	});

      	$(canvas).mousemove(function(e){
          var old_nearest = nearest && nearest.node._id
      		var pos = $(this).offset();
      		var s = {x:e.pageX-pos.left, y:e.pageY-pos.top};
      		nearest = particleSystem.nearest(s);
          if (!nearest) return
      		if (dragged !== null && dragged.node !== null){
            var p = particleSystem.fromScreen(s)
      			dragged.node.p = {x:p.x, y:p.y}
            // dragged.tempMass = 10000
      		}
          return false
      	});

      	$(window).bind('mouseup',function(e){
          if (dragged===null || dragged.node===undefined) return
          dragged.node.fixed = false
          dragged.node.tempMass = 100
      		dragged = null;
      		selected = null
      		return false
      	});
      },
    }
    return that
  }
  
  var Maps = function(elt){
    var sys = arbor.ParticleSystem(4000, 500, 0.5, 55)
    // our newly created renderer will have its .init() method 
    // called shortly by sys...
    sys.renderer = Renderer("#viewport") 
    var dom = $(elt)    
    var _links = dom.find('ul')
    var _sources = {
      flyleaf:'Derived from Jenks and Sutor flyleaf',
      book9:'Derived from <a href="http://axiom-developer.org/axiom-website/bookvol9.pdf">Axiom Volume 9: The Compiler</a>',
    }

    var _maps = {
      dstruct:{title:"Data", p:{stiffness:500}, source:_sources.flyleaf},
      algebra:{title:"Algebra", p:{stiffness:600}, source:_sources.flyleaf},
      nine:{title:"Compiler", p:{stiffness:500}, source:_sources.book9},
      funsel:{title:"FunctionSelection", 
              p:{stiffness:500}, source:_sources.book9},
      comment:{title:"Comment", p:{stiffness:500}, source:_sources.book9},
      parse:{title:"Parse", p:{stiffness:500}, source:_sources.book9},
      compile:{title:"Compile", p:{stiffness:500}, source:_sources.book9},
      compiler:{title:"Compiler", p:{stiffness:500}, source:_sources.book9}
    }
    
    var that = {
      init:function(){
        $.each(_maps, function(stub, map){
          _links.append("<li><a href='#/"+stub+"' class='"+stub+"'>"+map.title+"</a></li>")
        })
        _links.find('li > a').click(that.mapClick)
        _links.find('.compiler').click()
        return that
      },

      mapClick:function(e){
        var selected = $(e.target)
        var newMap = selected.attr('class')
        if (newMap in _maps) that.selectMap(newMap)
        _links.find('li > a').removeClass('active')
        selected.addClass('active')
        return false
      },

      selectMap:function(map_id){ 
        $.getJSON("maps/"+map_id+".json",function(data){
          // load the raw data into the particle system as is 
          // (since it's already formatted correctly for .merge)
          var nodes = data.nodes
          $.each(nodes, function(name, info){
            if (info.visible === "show")
              info.label=name
          })
          sys.merge({nodes:nodes, edges:data.edges})
          sys.parameters(_maps[map_id].p)
          $("#dataset").html(_maps[map_id].source)
        })
        
      }
    }
    
    return that.init()    
  }
  
  $(document).ready(function(){

    var mcp = Maps("#maps")

  })
	
})()