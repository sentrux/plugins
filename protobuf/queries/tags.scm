; Protocol Buffers tags.scm

(message
  (message_name) @name) @definition.class

(enum
  (enum_name) @name) @definition.class

(service
  (service_name) @name) @definition.class

(rpc
  (rpc_name) @name) @definition.function

; ---- Import appendix ----
; UNTESTED: @import.module captures are best-effort without grammar validation

; import "other.proto" — the string literal is the module path
(import
  (string) @import.module) @import

; Fallback
(import) @import
