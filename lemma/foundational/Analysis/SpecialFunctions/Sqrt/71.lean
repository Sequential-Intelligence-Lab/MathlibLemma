import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_hasDerivWithinAt_Ici {x : ℝ} (hx : 0 < x) :
    HasDerivWithinAt Real.sqrt (1 / (2 * √x)) (Set.Ici 0) x := by
  -- Use the fact that the derivative of sqrt(x) is 1 / (2 * sqrt(x)) for x > 0.
  have h : HasDerivAt Real.sqrt (1 / (2 * √x)) x := by
    apply hasDerivAt_sqrt
    linarith
  -- Restrict the domain to x ≥ 0 and conclude the proof.
  apply h.hasDerivWithinAt
  <;> simp_all [Set.Ici]