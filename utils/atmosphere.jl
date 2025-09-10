module Atmosphere

import CSV
using DataFrames

export init, getAtm

atm = nothing

function init(fileName::String)
  global atm = CSV.read(fileName, DataFrame, delim=' ', header=1, ignorerepeated =true, ignoreemptyrows=true)
end

function getAtm(alt::Float64)
  idx=0;
  while atm.alt[idx+1]<alt
    idx+=1
    if idx==nrow(atm)
      return (false, 0.0, 0.0)
    end
  end
  p = (alt - atm.alt[idx+1])/(atm.alt[idx+1] - atm.alt[idx])
  T = atm.T[idx+1] + p*(atm.T[idx+1] - atm.T[idx])
  rho = atm.rho[idx+1] + p*(atm.rho[idx+1] - atm.rho[idx])
  return (true, T, rho) 
end

end # module Atmosphere