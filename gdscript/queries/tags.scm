; GDScript tags.scm — verified against actual AST

; functions: function_definition → name field:name
(function_definition
  name: (name) @name) @definition.function

; classes: class_name_statement → name field:name
(class_name_statement
  name: (name) @name) @definition.class

; class definitions
(class_definition
  name: (name) @name) @definition.class
