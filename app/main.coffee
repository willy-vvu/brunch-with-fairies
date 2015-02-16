renderer = new PIXI.autoDetectRenderer(500, 500, transparent: true)
stage = new PIXI.Stage()

$("body").append(renderer.view)

# Your setup code goes here!

do render = ()->
  # Your render code goes here!

  renderer.render(stage)

  if window.requestAnimationFrame?
    window.requestAnimationFrame(render)
  else
    setTimeout(render, 1000/60)
