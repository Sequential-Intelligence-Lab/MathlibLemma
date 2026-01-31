import Mathlib

lemma sqrt_hasDerivWithinAt_Ioi {x : ℝ} (hx : 0 < x) :
    HasDerivWithinAt Real.sqrt (1 / (2 * √x)) (Set.Ioi 0) x := by
  sorry
