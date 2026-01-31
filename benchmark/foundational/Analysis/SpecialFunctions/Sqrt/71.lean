import Mathlib

lemma sqrt_hasDerivWithinAt_Ici {x : ℝ} (hx : 0 < x) :
    HasDerivWithinAt Real.sqrt (1 / (2 * √x)) (Set.Ici 0) x := by
  sorry
