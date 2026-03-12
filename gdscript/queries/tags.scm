;; GDScript structural queries for sentrux

;; Function definitions
(function_definition
  name: (name) @func.name) @func.def

;; Class definitions
(class_definition
  name: (name) @class.name) @class.def

;; All calls — captured as reference.call for call graph
(call) @reference.call

;; preload/load calls — full text captured as @import for import extraction
(call) @import
