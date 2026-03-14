; Perl tags.scm

(subroutine_declaration_statement
  name: (bareword) @name) @definition.function

(method_declaration_statement
  name: (bareword) @name) @definition.function

(package_statement
  name: (package) @name) @definition.class

(use_statement
  module: (package) @import.module) @import

(require_expression) @import
