;; GDScript structural queries for sentrux
;; Compatible with PrestonKnopp/tree-sitter-gdscript

;; Function definitions
(function_definition
  name: (name) @func.name) @func.def

;; Class definitions  
(class_definition
  name: (name) @class.name) @class.def
