import Mathlib

lemma Real.log_add_le_log_add {x y z : ℝ}
    (hx : 0 < x) (hy : 0 < y) (hz : 0 ≤ z) (hxy : x ≤ y) :
    Real.log (x + z) ≤ Real.log (y + z) := by
  sorry
