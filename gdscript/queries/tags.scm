;; GDScript structural extraction queries for sentrux
;; Minimal safe version — compatible with PrestonKnopp/tree-sitter-gdscript

;; Function definitions
(function_definition
  name: (name) @func.name) @func.def

;; Class definitions
(class_definition
  name: (name) @class.name) @class.def
