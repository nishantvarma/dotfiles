local lexers = vis.lexers

-- Color  │ Semantic     │ Elements
-- ───────┼──────────────┼─────────────────────────────────
-- green  │ creation     │ def, class, lambda, additions
-- yellow │ control      │ if, for, return, match, tags
-- blue   │ names        │ functions, classes, methods, headings
-- cyan   │ values       │ strings, numbers, True/False/None, self
-- magenta│ meta         │ @decorator, preprocessor
-- red    │ external     │ import, exceptions, errors, deletions
-- gray   │ noise        │ comments, separators

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
lexers.STYLE_EOF = "fore:black"

-- syntax
lexers.STYLE_COMMENT = "fore:gray"
lexers.STYLE_STRING = "fore:cyan"
lexers.STYLE_STRING_DOC = "fore:magenta"
lexers.STYLE_REGEX = "fore:cyan,italics"
lexers.STYLE_NUMBER = "fore:cyan"
lexers.STYLE_CONSTANT = "fore:cyan"
lexers.STYLE_KEYWORD = "fore:yellow"
lexers.STYLE_KEYWORD_DECLARATION = "fore:green"
lexers.STYLE_KEYWORD_IMPORT = "fore:red"
lexers.STYLE_TYPE = "fore:cyan"
lexers.STYLE_FUNCTION = "fore:blue"
lexers.STYLE_FUNCTION_BUILTIN = "fore:blue,italics"
lexers.STYLE_FUNCTION_BUILTIN_SPECIAL = "fore:blue,italics"
lexers.STYLE_FUNCTION_METHOD = "fore:blue,italics"
lexers.STYLE_KEYWORD_SOFT = "fore:yellow,italics"
lexers.STYLE_ANNOTATION = "fore:magenta"
lexers.STYLE_CLASS = "fore:blue"
lexers.STYLE_DEFINITION = "fore:blue"
lexers.STYLE_CONSTANT_BUILTIN = "fore:red"
lexers.STYLE_CONSTANT_BUILTIN_BOOLEAN = "fore:cyan"
lexers.STYLE_VARIABLE = ""
lexers.STYLE_VARIABLE_BUILTIN = "fore:cyan,italics"
lexers.STYLE_IDENTIFIER = ""
lexers.STYLE_OPERATOR = ""
lexers.STYLE_PREPROCESSOR = "fore:magenta"
lexers.STYLE_ATTRIBUTE = "fore:magenta"
lexers.STYLE_LABEL = "fore:magenta"
lexers.STYLE_TAG = "fore:yellow"
lexers.STYLE_ERROR = "fore:white,back:red"
lexers.STYLE_EMBEDDED = "fore:cyan"
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
lexers.STYLE_CODE = "fore:cyan"
lexers.STYLE_LINK = "fore:cyan"
lexers.STYLE_REFERENCE = "fore:cyan"
lexers.STYLE_HR = "fore:gray"
lexers.STYLE_LIST = "fore:yellow"
for i = 1, 6 do
    lexers["STYLE_HEADING_H" .. i] = lexers.STYLE_HEADING
end
