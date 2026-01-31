import Mathlib

lemma Real.monotone_log_on_Icc {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    MonotoneOn Real.log (Set.Icc a b) := by
  sorry
