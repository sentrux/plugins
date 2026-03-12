;; GDScript structural extraction queries for sentrux
;; Based on tree-sitter-gdscript grammar

;; Function definitions
(function_definition
  name: (name) @func.name) @func.def

;; Class definitions
(class_definition
  name: (name) @class.name) @class.def

;; Class method definitions (extends body)
(class_definition
  body: (body
    (function_definition
      name: (name) @func.name) @func.def))

;; Import/preload statements
;; preload("res://path/to/script.gd")
(call
  function: (name) @_fn
  arguments: (arguments
    (string) @import.path)
  (#match? @_fn "^(preload|load)$")) @import.node

;; Function calls
(call
  function: (name) @call.name)

;; Method calls (e.g., node.get_child())
(call
  function: (attribute
    attribute: (name) @call.name))

;; Signal declarations (Godot-specific, treated as class members)
(signal_statement
  name: (name) @func.name) @func.def

;; Variable declarations with export (structural annotation)
(variable_statement
  name: (name) @var.name) @var.def
