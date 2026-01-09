import Lake
open Lake DSL

package paco_qpf {
}

@[default_target]
lean_lib PacoQpf

require paco from git "https://github.com/hxrts/paco-lean.git"@"main"
require Qpf from "../QpfTypes"
