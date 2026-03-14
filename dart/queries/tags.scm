; Dart tags.scm — verified against actual AST

; functions
(function_signature
  name: (identifier) @name) @definition.function

; classes
(class_definition
  name: (identifier) @name) @definition.class

; enum
(enum_declaration
  name: (identifier) @name) @definition.class

; imports — dart grammar may parse these as library_import or ERROR
(library_import) @import
(library_export) @import
