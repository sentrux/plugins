; PHP structural queries for sentrux

; Functions
(function_definition
  name: (name) @func.name) @func.def

; Methods
(method_declaration
  name: (name) @func.name) @func.def

; Classes
(class_declaration
  name: (name) @class.name) @class.def

; Interfaces
(interface_declaration
  name: (name) @class.name) @class.def

; Traits
(trait_declaration
  name: (name) @class.name) @class.def

; Namespace use (imports): use Foo\Bar\Baz;
(namespace_use_declaration
  (namespace_use_clause
    (qualified_name) @import.path)) @import.node

; Include/require: include "file.php";
(include_expression
  (string) @import.path) @import.node

; Function calls
(function_call_expression
  function: (name) @call.name)

; Method calls
(member_call_expression
  name: (name) @call.name)

; Static calls
(scoped_call_expression
  name: (name) @call.name)
