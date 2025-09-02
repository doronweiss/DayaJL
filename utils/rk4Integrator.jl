module rk4Integrator

struct SCoeffsData
  k1,k2,k3,k4 ::Float64
  SCoeffsData() = new(k1=0.0, k2=0.0, k3=0.0, k4=0.0)
end

coeffsVec = Vector{SCoeffsData}()

function Init(iVecSz::Int, )
end

function DoIntegStep(from:Float64, step::Float64, derivesCalculator::Function, integVec::Vector{Float64})
  integHelperVec = integVec[:]

end

end