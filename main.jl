import JSON3

include("Definitions/basedefs.jl")
import .BaseDefs
include("Hub.jl")
import .Hub
include("utils/atmosphere.jl")
import .Atmosphere

println("hello, i am starting at: $(pwd())")

println("loading initialization data....")
json = read("./run_dir/initdata.json", String)
initData = JSON3.read(json, BaseDefs.InitData)

Atmosphere.init("./run_dir/atmos.dat")
println(Atmosphere.getAtm(1.0)) 