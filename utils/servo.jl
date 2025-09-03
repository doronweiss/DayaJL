module Servo

A_Ztransf = [-0.0017102, -0.00038892, 0.0043527, 0.0030315]
B_Ztransf = [1, -2.4955, 2.1183, -0.61748]

struct controlServo
  uzVec::vector{Float64}
  yzVec::vector{Float64}
end

end