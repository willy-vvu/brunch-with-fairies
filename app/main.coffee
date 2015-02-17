renderer = new PIXI.autoDetectRenderer(window.innerWidth, window.innerHeight, transparent: true)
stage = new PIXI.Stage()

$("body").append(renderer.view)

# Your setup code goes here!

resize = ()->
  renderer.resize(window.innerWidth, window.innerHeight)

window.addEventListener("resize", resize)

do render = ()->

  # Your render code goes here!

  renderer.render(stage)

  if window.requestAnimationFrame?
    window.requestAnimationFrame(render)
  else
    setTimeout(render, 1000/60)
