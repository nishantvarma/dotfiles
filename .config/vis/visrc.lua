require("vis")

vis.events.subscribe(vis.events.INIT, function()
    vis:command("set theme terminal")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
end)
