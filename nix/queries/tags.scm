; Nix tags.scm — verified against actual AST

; bindings (nix functions are let bindings)
(binding
  attrpath: (attrpath
    (identifier) @name)) @definition.function

; with expression brings external attrs into scope
(with_expression) @import
