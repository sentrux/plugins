; Solidity tags.scm

(function_definition
  name: (identifier) @name) @definition.function

(contract_declaration
  name: (identifier) @name) @definition.class

(interface_declaration
  name: (identifier) @name) @definition.interface

(library_declaration
  name: (identifier) @name) @definition.module

(struct_declaration
  name: (identifier) @name) @definition.class

(event_definition
  name: (identifier) @name) @definition.function

; ---- Import appendix ----

(import_directive
  (import_path) @import.module) @import
