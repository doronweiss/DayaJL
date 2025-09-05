module Atmosphere

import CSV, DataFrames

export init, getAtm

global atm

function init(fileName::String)
  global atm = CSV.read(fileName, DataFrames, delim=' ', headers=["H", "T", "dummy1", "ρ", "dummy2"])
end

function getAtm(alt::Float64)
  idx=0;
  while false
  end
  1.0,1.0
end


end