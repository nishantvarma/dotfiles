local lexers = vis.lexers

lexers.STYLE_ATTRIBUTE = "fore:green,bold"
lexers.STYLE_CLASS = "fore:yellow,bold"
lexers.STYLE_COMMENT = "fore:blue,bold"
lexers.STYLE_CONSTANT = "fore:cyan,bold"
lexers.STYLE_DEFAULT = "fore:white"
lexers.STYLE_DEFINITION = "fore:blue,bold"
lexers.STYLE_EMBEDDED = "back:gray,fore:white"
lexers.STYLE_ERROR = "fore:red,italics"
lexers.STYLE_FUNCTION = "fore:blue,bold"
lexers.STYLE_HEADING = "fore:magenta"
lexers.STYLE_IDENTIFIER = "fore:white"
lexers.STYLE_KEYWORD = "fore:yellow,bold"
lexers.STYLE_LABEL = "fore:green,bold"
lexers.STYLE_NOTHING = "fore:white"
lexers.STYLE_NUMBER = "fore:red,bold"
lexers.STYLE_OPERATOR = "fore:cyan,bold"
lexers.STYLE_PREPROCESSOR = "fore:magenta,bold"
lexers.STYLE_REGEX = "fore:green,bold"
lexers.STYLE_STRING = "fore:red,bold"
lexers.STYLE_TAG = "fore:red,bold"
lexers.STYLE_TYPE = "fore:green,bold"
lexers.STYLE_VARIABLE = "fore:blue,bold"
lexers.STYLE_WHITESPACE = "fore:white"

lexers.STYLE_COLOR_COLUMN = "back:red"
lexers.STYLE_CURSOR = "back:white,fore:black"
lexers.STYLE_CURSOR_LINE = "underlined"
lexers.STYLE_CURSOR_PRIMARY = lexers.STYLE_CURSOR .. ",fore:yellow"
lexers.STYLE_EOF = "fore:white"
lexers.STYLE_INFO = "bold"
lexers.STYLE_LINENUMBER = "fore:white"
lexers.STYLE_LINENUMBER_CURSOR = lexers.STYLE_LINENUMBER
lexers.STYLE_SELECTION = "back:white,bold"
lexers.STYLE_SEPARATOR = lexers.STYLE_DEFAULT
lexers.STYLE_STATUS = "reverse"
lexers.STYLE_STATUS_FOCUSED = "reverse,bold"

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
lexers.STYLE_TAG_DOCTYPE = lexers.STYLE_TAG .. ",bold"
lexers.STYLE_TAG_SINGLE = lexers.STYLE_TAG
lexers.STYLE_TAG_UNKNOWN = lexers.STYLE_TAG .. ",italics"

-- Markdown

lexers.STYLE_BOLD = "bold"
lexers.STYLE_CODE = lexers.STYLE_EMBEDDED
lexers.STYLE_HR = "fore:white"
for i = 1,6 do
    lexers["STYLE_HEADING_H" .. i] = lexers.STYLE_HEADING
end
lexers.STYLE_ITALIC = "italics"
lexers.STYLE_LIST = lexers.STYLE_KEYWORD
lexers.STYLE_LINK = lexers.STYLE_KEYWORD
lexers.STYLE_REFERENCE = lexers.STYLE_KEYWORD
