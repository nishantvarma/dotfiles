require("vis")

vis:map(vis.modes.NORMAL, "s", ":w<Enter>")

vis.events.subscribe(vis.events.INIT, function()
    vis:command(string.format("open '%s'", "scratch/scratch.txt"))
    vis:command("set theme terminal")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
end)
