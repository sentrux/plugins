; Kotlin tags.scm

(function_declaration
  (simple_identifier) @name) @definition.function

(class_declaration
  (type_identifier) @name) @definition.class

(object_declaration
  (type_identifier) @name) @definition.class

(interface_declaration
  (type_identifier) @name) @definition.interface

(call_expression
  (simple_identifier) @name) @reference.call

; ---- Import appendix ----

(import_header
  (identifier) @import.module) @import
