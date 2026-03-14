; Objective-C tags.scm

(function_definition
  declarator: (function_declarator
    declarator: (identifier) @name)) @definition.function

(method_declaration
  selector: (keyword_selector
    (keyword_declarator
      keyword: (identifier) @name))) @definition.function

(class_interface
  name: (identifier) @name) @definition.class

(protocol_declaration
  name: (identifier) @name) @definition.interface

(category_interface
  name: (identifier) @name) @definition.class

; ---- Import appendix ----

(preproc_import
  path: (_) @import.module) @import

(preproc_include
  path: (_) @import.module) @import
