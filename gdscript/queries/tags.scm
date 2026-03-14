; GDScript tags.scm — verified against actual AST

; functions
(function_definition
  name: (name) @name) @definition.function

; classes
(class_name_statement
  name: (name) @name) @definition.class

(class_definition
  name: (name) @name) @definition.class

; calls
(call
  (identifier) @name) @reference.call

; imports: preload("res://path") and load("res://path")
(call
  (identifier) @_fn
  (arguments
    (string) @import.module)
  (#any-of? @_fn "preload" "load")) @import
