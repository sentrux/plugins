; Nix tags.scm

(binding
  attrpath: (attrpath
    (identifier) @name)) @definition.function

; ---- Import appendix ----
; UNTESTED: @import.module captures are best-effort without grammar validation

; import ./path.nix — parsed as (apply_expression function: (identifier) argument: (path_expression))
; In tree-sitter-nix, `import <nixpkgs>` is also apply_expression
(apply_expression
  function: (identifier) @_fn
  argument: (_) @import.module
  (#eq? @_fn "import")) @import

; with expression (brings names into scope)
(with_expression) @import

(inherit
  (identifier) @name) @definition.constant
