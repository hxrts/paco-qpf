import Lake
open Lake DSL

package paco_qpf {
}

@[default_target]
lean_lib PacoQpf

require paco from "../paco-lean"
require Qpf from "../.."
