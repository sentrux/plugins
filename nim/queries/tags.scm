; Nim tags.scm — verified against actual AST

; functions: routine → symbol → ident
(routine
  (symbol
    (ident) @name)) @definition.function

; types: typeDef → symbol → ident
(typeDef
  (symbol
    (ident) @name)) @definition.class

; imports: importStmt text contains the module path
(importStmt) @import
(fromStmt) @import
(includeStmt) @import
