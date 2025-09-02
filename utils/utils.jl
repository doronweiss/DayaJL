module Utils

import LinearAlgebra as la

export ×

# function ×(a::Vector{Float64}, b::Vector{Float64})
function ×(a::Vector{Float64}, b::Vector{Float64})
    la.cross(a,b)
end



# va=[1.0, 2.0, 3.0]
# vb=[3.0, 5.0, -1.0]
# vres = va × vb
# println("vres: $vres")
end