require("vis")

vis:command_register("fzf", function(argv, force, win, selection, range)
    local command = "fzf"
    local file = io.popen(command)
    local output = file:read()
    local success, msg, status = file:close()

    vis:command(string.format("e '%s'", output))
    vis:feedkeys("<vis-redraw>")
end)

vis:map(vis.modes.NORMAL, "s", ":w<Enter>")
vis:map(vis.modes.NORMAL, " ", ":<Up>")

vis.events.subscribe(vis.events.INIT, function()
    vis:command(string.format("open '%s'", "scratch/scratch.txt"))
    vis:command("set theme terminal")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
end)
