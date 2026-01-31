import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-- Integrability of `x^q * (1 + x)^(-a)` on `ℝ` under balancing conditions. -/
lemma Real.integrable_rpow_mul_inv_rpow
    {q a : ℝ} (h : a > q + 1) :
    MeasureTheory.Integrable (fun x : ℝ => x ^ q * (1 + x) ^ (-a)) := by
  sorry