config.load_autoconfig()

config.set("content.pdfjs", False)

config.bind("gz", "hint links spawn --detach zathura {hint-url}")
