module Atmosphere

import CSV
using DataFrames

export init, getAtm

atm = nothing

function init(fileName::String)
  #global atm = CSV.read("c:/tries/julia/DayaJL/run_dir/atmos.dat", DataFrame, delim=' ', header=1)
  global atm = CSV.read(fileName, DataFrame, delim='\t', header=1)
  #global atm = CSV.read(fileName, DataFrames, delim=' ', headers=1) #, headers=[:H, :T, :dummy1, :rho, :dummy2])
end

function getAtm(alt::Float64)
  idx=0;
  while false
  end
  1.0,1.0
end


end