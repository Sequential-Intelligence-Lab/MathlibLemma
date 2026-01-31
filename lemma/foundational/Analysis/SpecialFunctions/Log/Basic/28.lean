import Mathlib

lemma Real.log_abs_nonpos_iff (x : ℝ) (hx : x ≠ 0) :
    Real.log |x| ≤ 0 ↔ |x| ≤ 1 := by
  have hnonneg : 0 ≤ |x| := abs_nonneg x
  simpa using (Real.log_nonpos_iff (x := |x|) hnonneg)