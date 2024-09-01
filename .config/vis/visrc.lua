require("vis")

vis:command_register("exec", function(argv, force, win, selection, range)
    local cmd = table.concat(argv, " ")
    local file = io.popen(cmd)
    local output = file:read()
    local success, msg, status = file:close()
    if output then
        for part in string.gmatch(output, "[^:\n]+") do
            local command = part:match("^%s*(.-)%s*$")
            vis:command(command)
        end
    end
    vis:feedkeys("<vis-redraw>")
end)


vis:map(vis.modes.NORMAL, " ", ":exec vis-cmds<Enter>")
vis:map(vis.modes.NORMAL, "s", ":w<Enter>")
backslash = "\\"
vis:map(vis.modes.NORMAL, backslash .. "d", "o<Escape>")
vis:map(vis.modes.NORMAL, backslash .. "f", ":exec vis-preview<Enter>")
vis:map(vis.modes.NORMAL, backslash .. "F", ":exec vis-preview ")
vis:map(vis.modes.NORMAL, backslash .. "q", ":q<Enter>")
vis:map(vis.modes.NORMAL, backslash .. "s", ":exec vis-search ")
vis:map(vis.modes.NORMAL, backslash .. "u", "O<Escape>")
vis:map(vis.modes.NORMAL, "<C-Up>", "<vis-window-prev>")
vis:map(vis.modes.NORMAL, "<C-Down>", "<vis-window-next>")

vis.events.subscribe(vis.events.INIT, function()
    vis:command("set autoindent on")
    vis:command("set theme terminal")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
end)
