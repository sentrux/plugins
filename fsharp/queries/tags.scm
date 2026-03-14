; F# tags.scm

(function_or_value_defn
  (value_declaration_left
    (identifier_pattern) @name)) @definition.function

(type_definition
  (type_name
    (long_identifier) @name)) @definition.class

(module_defn
  (long_identifier) @name) @definition.module

; ---- Import appendix ----

(open_declaration
  (long_identifier) @import.module) @import
