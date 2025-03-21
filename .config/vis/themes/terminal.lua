local lexers = vis.lexers

lexers.STYLE_COLOR_COLUMN = "back:red"
lexers.STYLE_CURSOR = "back:gray,fore:default"
lexers.STYLE_CURSOR_LINE = "underlined"
lexers.STYLE_CURSOR_PRIMARY = "back:white,fore:black"
lexers.STYLE_EOF = "fore:black"
lexers.STYLE_INFO = "bold"
lexers.STYLE_LINENUMBER = "fore:green"
lexers.STYLE_LINENUMBER_CURSOR = "fore:red"
lexers.STYLE_SELECTION = "back:gray,fore:default"
lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
lexers.STYLE_STATUS = "back:gray,fore:yellow"
lexers.STYLE_STATUS_FOCUSED = "back:gray,fore:green"

lexers.STYLE_ATTRIBUTE = "fore:green"
lexers.STYLE_CLASS = "fore:yellow"
lexers.STYLE_COMMENT = "fore:cyan"
lexers.STYLE_CONSTANT = "fore:red"
lexers.STYLE_DEFAULT = "fore:white"
lexers.STYLE_DEFINITION = "fore:green"
lexers.STYLE_EMBEDDED = "back:gray,fore:white"
lexers.STYLE_ERROR = "back:red,fore:white"
lexers.STYLE_FUNCTION = "fore:red"
lexers.STYLE_HEADING = "fore:blue"
lexers.STYLE_IDENTIFIER = "fore:white"
lexers.STYLE_KEYWORD = "fore:magenta"
lexers.STYLE_LABEL = "fore:green"
lexers.STYLE_NOTHING = "fore:white"
lexers.STYLE_NUMBER = "fore:cyan"
lexers.STYLE_OPERATOR = "fore:cyan"
lexers.STYLE_PREPROCESSOR = "fore:magenta"
lexers.STYLE_REGEX = "fore:red"
lexers.STYLE_STRING = "fore:green"
lexers.STYLE_TAG = "fore:yellow"
lexers.STYLE_TYPE = "fore:green"
lexers.STYLE_VARIABLE = "fore:blue"
lexers.STYLE_WHITESPACE = "fore:white"

-- Diff

lexers.STYLE_ADDITION = "fore:green"
lexers.STYLE_CHANGE = "fore:yellow"
lexers.STYLE_DELETION = "fore:red"

-- CSS

lexers.STYLE_PROPERTY = lexers.STYLE_ATTRIBUTE
lexers.STYLE_PSEUDOCLASS = "fore:white"
lexers.STYLE_PSEUDOELEMENT = "fore:white"

-- HTML

lexers.STYLE_ATTRIBUTE_UNKNOWN = lexers.STYLE_ATTRIBUTE .. ",italics"
lexers.STYLE_TAG_DOCTYPE = lexers.STYLE_TAG
lexers.STYLE_TAG_SINGLE = lexers.STYLE_TAG
lexers.STYLE_TAG_UNKNOWN = lexers.STYLE_TAG .. ",italics"

-- Markdown

lexers.STYLE_BOLD = "bold"
lexers.STYLE_CODE = "fore:white"
lexers.STYLE_HR = "fore:white"
for i = 1,6 do
    lexers["STYLE_HEADING_H" .. i] = lexers.STYLE_HEADING
end
lexers.STYLE_ITALIC = "italics"
lexers.STYLE_LIST = lexers.STYLE_KEYWORD
lexers.STYLE_LINK = lexers.STYLE_KEYWORD
lexers.STYLE_REFERENCE = lexers.STYLE_KEYWORD
