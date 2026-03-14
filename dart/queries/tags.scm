; Dart tags.scm

(function_signature
  name: (identifier) @name) @definition.function

(method_signature
  (function_signature
    name: (identifier) @name)) @definition.function

(class_definition
  name: (identifier) @name) @definition.class

(enum_declaration
  name: (identifier) @name) @definition.class

; ---- Import appendix ----

(import_or_export
  (configurable_uri) @import.module) @import
