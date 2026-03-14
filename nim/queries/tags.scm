; Nim tags.scm

(proc_declaration
  name: (identifier) @name) @definition.function

(func_declaration
  name: (identifier) @name) @definition.function

(method_declaration
  name: (identifier) @name) @definition.function

(type_section
  (type_declaration
    (type_symbol_declaration
      name: (identifier) @name))) @definition.class

; ---- Import appendix ----
; UNTESTED: @import.module captures are best-effort without grammar validation

; import strutils / import os, strutils — capture module identifiers
; In tree-sitter-nim, import_statement has (expression_list (identifier) ...) or direct (identifier)
(import_statement
  (expression_list
    (identifier) @import.module)) @import

(import_statement
  (identifier) @import.module) @import

; from os import joinPath — capture the source module
; from_statement has a module identifier followed by import list
(from_statement
  (identifier) @import.module) @import

; Fallback: whole statement
(import_statement) @import

(from_statement) @import
