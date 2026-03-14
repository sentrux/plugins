; Groovy tags.scm

(method_declaration
  name: (identifier) @name) @definition.function

(class_declaration
  name: (identifier) @name) @definition.class

(interface_declaration
  name: (identifier) @name) @definition.interface

; ---- Import appendix ----

(import_declaration
  (qualified_name) @import.module) @import
