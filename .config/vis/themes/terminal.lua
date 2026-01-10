local lexers = vis.lexers

-- ui
lexers.STYLE_DEFAULT = ""
lexers.STYLE_CURSOR = "fore:black,back:white"
lexers.STYLE_CURSOR_PRIMARY = "fore:black,back:white"
lexers.STYLE_CURSOR_LINE = ""
lexers.STYLE_SELECTION = "fore:default,back:gray"
lexers.STYLE_LINENUMBER = "fore:gray"
lexers.STYLE_LINENUMBER_CURSOR = "fore:white"
lexers.STYLE_COLOR_COLUMN = "back:red"
lexers.STYLE_SEPARATOR = "fore:gray"
lexers.STYLE_STATUS = "fore:white,back:gray"
lexers.STYLE_STATUS_FOCUSED = "fore:green,back:gray"
lexers.STYLE_INFO = "fore:white"
lexers.STYLE_EOF = "fore:gray"

-- syntax
lexers.STYLE_COMMENT = "fore:gray"
lexers.STYLE_STRING = "fore:green"
lexers.STYLE_REGEX = "fore:green"
lexers.STYLE_NUMBER = "fore:cyan"
lexers.STYLE_CONSTANT = "fore:cyan"
lexers.STYLE_KEYWORD = "fore:yellow"
lexers.STYLE_TYPE = "fore:cyan"
lexers.STYLE_FUNCTION = "fore:blue"
lexers.STYLE_CLASS = "fore:yellow"
lexers.STYLE_DEFINITION = "fore:blue"
lexers.STYLE_VARIABLE = ""
lexers.STYLE_IDENTIFIER = ""
lexers.STYLE_OPERATOR = ""
lexers.STYLE_PREPROCESSOR = "fore:magenta"
lexers.STYLE_ATTRIBUTE = "fore:cyan"
lexers.STYLE_LABEL = "fore:magenta"
lexers.STYLE_TAG = "fore:yellow"
lexers.STYLE_ERROR = "fore:white,back:red"
lexers.STYLE_EMBEDDED = "fore:green"
lexers.STYLE_NOTHING = ""
lexers.STYLE_WHITESPACE = ""
lexers.STYLE_HEADING = "fore:blue,bold"

-- diff
lexers.STYLE_ADDITION = "fore:green"
lexers.STYLE_DELETION = "fore:red"
lexers.STYLE_CHANGE = "fore:yellow"

-- markup
lexers.STYLE_BOLD = "bold"
lexers.STYLE_ITALIC = "italics"
lexers.STYLE_CODE = "fore:green"
lexers.STYLE_LINK = "fore:cyan"
lexers.STYLE_REFERENCE = "fore:cyan"
lexers.STYLE_HR = "fore:gray"
lexers.STYLE_LIST = "fore:yellow"
for i = 1, 6 do
    lexers["STYLE_HEADING_H" .. i] = lexers.STYLE_HEADING
end
