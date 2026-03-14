; PowerShell tags.scm

(function_statement
  name: (command_name_expr) @name) @definition.function

(class_statement
  name: (identifier) @name) @definition.class

(enum_statement
  name: (identifier) @name) @definition.class
