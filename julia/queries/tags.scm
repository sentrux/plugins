; Julia tags.scm

(function_definition
  name: (identifier) @name) @definition.function

(short_function_definition
  name: (identifier) @name) @definition.function

(struct_definition
  name: (identifier) @name) @definition.class

(abstract_definition
  name: (identifier) @name) @definition.class

(module_definition
  name: (identifier) @name) @definition.module

(call_expression
  (identifier) @name) @reference.call

; ---- Import appendix ----
; UNTESTED: @import.module captures are best-effort without grammar validation

; import Foo / import Foo: bar — capture the module identifier
; In tree-sitter-julia, import_statement contains (identifier) or (selected_import (identifier) ...)
(import_statement
  (identifier) @import.module) @import

(import_statement
  (selected_import
    (identifier) @import.module)) @import

; using Foo / using Foo: bar
(using_statement
  (identifier) @import.module) @import

(using_statement
  (selected_import
    (identifier) @import.module)) @import

; Fallback: whole statement
(import_statement) @import

(using_statement) @import
