import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.integral_convolution_gamma_kernels
    {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    ∫ t in Set.Ioi (0 : ℝ),
      (∫ s in Set.Ioi (0 : ℝ),
        s ^ (a - 1) * (t / s) ^ (b - 1) * Real.exp (-s - t / s)) =
      Real.Gamma a * Real.Gamma b := by sorry