; Perl tags.scm

(subroutine_declaration_statement
  name: (bareword) @name) @definition.function

(package_statement
  (package_name) @name) @definition.class

; ---- Import appendix ----

(use_statement
  (package_name) @import.module) @import
