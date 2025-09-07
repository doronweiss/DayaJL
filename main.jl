import JSON3

include("Definitions/basedefs.jl")
import .BaseDefs
include("Hub.jl")
import .Hub
include("utils/atmosphere.jl")
import .Atmosphere

println("hello, i am starting at: $(pwd())")

println("loading initialization data....")
@time begin
json = read("./run_dir/initdata.json", String)
initData = JSON3.read(json, BaseDefs.InitData)
end

Atmosphere.init("./run_dir/atmos.dat")
ok, T, rho = Atmosphere.getAtm(3250.1)
println("T=$T, rho=$rho")