require("vis")

vis:command_register("exec", function(argv, force, win, selection, range)
	local command = table.concat(argv, " ")
	local file = io.popen(command)
	local output = file:read()
	local success, message, status = file:close()
	if output then
		for part in string.gmatch(output, "[^:\n]+") do
			command = part:match("^%s*(.-)%s*$")
			vis:command(command)
		end
	end
	vis:feedkeys("<vis-redraw>")
end)

backslash = "\\"

vis:map(vis.modes.NORMAL, " ", ":exec vis+<Enter>")
vis:map(vis.modes.NORMAL, "q", ":q<Enter>")
vis:map(vis.modes.NORMAL, "Q", "<vis-macro-record>")
vis:map(vis.modes.NORMAL, "s", ":w<Enter>")
vis:map(vis.modes.NORMAL, "<C-Down>", "<vis-window-next>")
vis:map(vis.modes.NORMAL, "<C-Left>", "<vis-window-prev>")
vis:map(vis.modes.NORMAL, "<C-Right>", "<vis-window-next>")
vis:map(vis.modes.NORMAL, "<C-Up>", "<vis-window-prev>")
vis:map(vis.modes.NORMAL, "<Enter>", "i<Enter><Escape>")

vis.events.subscribe(vis.events.INIT, function()
	vis:command("set autoindent on")
	vis:command("set theme terminal")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
end)
