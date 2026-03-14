; Kotlin tags.scm

(function_declaration
  (simple_identifier) @name) @definition.function

(class_declaration
  (type_identifier) @name) @definition.class

(object_declaration
  (type_identifier) @name) @definition.class

(import_header
  (identifier) @import.module) @import
