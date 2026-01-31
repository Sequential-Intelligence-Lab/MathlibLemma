import Mathlib

lemma Real.integrable_on_log_Icc {a b : ℝ}
    (ha : 0 < a) (hb : a < b) :
    MeasureTheory.IntegrableOn Real.log (Set.Icc a b) := by
  sorry
