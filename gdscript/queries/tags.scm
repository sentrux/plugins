;; GDScript structural queries for sentrux

;; Function definitions
(function_definition
  name: (name) @func.name) @func.def

;; Class definitions
(class_definition
  name: (name) @class.name) @class.def

;; All calls — captured as reference.call for call graph
(call) @reference.call

;; ---- Import appendix (custom) ----

;; preload("res://path") / load("res://path")
;; Capture string arguments inside calls as import.module
(call
  (arguments
    (string) @import.module)) @import
