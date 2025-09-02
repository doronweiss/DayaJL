module BaseDefs

import JSON3

export InitData

struct InitData
  baseTimeStep::Float64
  integDiv::Int32
  imuDix::Int32
  gncDiv::Int32
  cmdDiv::Int32
  printDiv::Int32

  InitData(bts, d1, d2, d3, d4, d5) = new(bts, d1, d2, d3, d4, d5) # default constructor
  InitData() = new(1/1600.0, 2, 4, 4, 4, 4)
end


# id = InitData()
# println(id)
# println(JSON3.write(id))

end