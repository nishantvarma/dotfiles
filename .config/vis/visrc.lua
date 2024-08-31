require("vis")

vis:command_register("execute", function(argv, force, win, selection, range)
    local command = table.concat(argv, " ")
    vis:info("executing " .. command)
    local file = io.popen(command)
    local output = file:read()
    local success, msg, status = file:close()
    if output then
        vis:command(output)
    end
    vis:feedkeys("<vis-redraw>")
end)

-- Normal Keys
vis:map(vis.modes.NORMAL, " ", ":execute commands<Enter>")
vis:map(vis.modes.NORMAL, "s", ":w<Enter>")
vis:map(vis.modes.VISUAL, "s", "<Escape>sgv")
vis:map(vis.modes.VISUAL_LINE, "s", "<Escape>sgv")

-- The G Key
vis:map(vis.modes.VISUAL, "gf", function()
    local win = vis.win
    local text = win.file:content(win.selection.range)
end)

-- Leader Key
vis:map(vis.modes.NORMAL, "\\\\", function()
end)
vis:map(vis.modes.NORMAL, "\\f", ":execute preview<Enter>")
vis:map(vis.modes.NORMAL, "\\q", ":q<Enter>")

-- Cut Copy Paste
vis:map(vis.modes.NORMAL, "<C-c>", '"+yy')
vis:map(vis.modes.VISUAL, "<C-c>", '"+ygv')
vis:map(vis.modes.NORMAL, "<C-v>", '"+p')
vis:map(vis.modes.VISUAL, "<C-v>", '"+p')
vis:map(vis.modes.NORMAL, "<C-x>", '"+dd')
vis:map(vis.modes.VISUAL, "<C-x>", '"+d')

vis.events.subscribe(vis.events.INIT, function()
    vis:command("set theme terminal")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
end)
