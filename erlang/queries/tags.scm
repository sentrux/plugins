; Erlang tags.scm

(function_clause
  name: (atom) @name) @definition.function

(attribute
  name: (atom) @attr_name
  (#eq? @attr_name "module")) @definition.module

; ---- Import appendix ----
; UNTESTED: @import.module captures are best-effort without grammar validation

; -import(lists, [...]). — the first argument after the attribute name is the module atom
; In WhatsApp/tree-sitter-erlang, attribute arguments are (arguments (atom) ...)
(attribute
  name: (atom) @_attr_name
  (arguments (atom) @import.module)
  (#eq? @_attr_name "import")) @import

; -include("file.hrl") / -include_lib("file.hrl") — string argument
(attribute
  name: (atom) @_attr_name2
  (arguments (string) @import.module)
  (#match? @_attr_name2 "^(include|include_lib)$")) @import

; Fallback for any import/include/include_lib without specific module capture
(attribute
  name: (atom) @attr_name
  (#match? @attr_name "^(import|include|include_lib)$")) @import
