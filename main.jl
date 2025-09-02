import JSON3

include("Definitions/basedefs.jl")
import .BaseDefs

println("hello, i am starting.....")

println("loading initialization data....")
json = read("./initdata.json", String)
initData = JSON3.read(json, BaseDefs.InitData)
