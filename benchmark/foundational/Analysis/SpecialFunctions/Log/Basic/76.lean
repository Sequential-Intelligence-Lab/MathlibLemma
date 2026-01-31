import Mathlib

lemma Real.integrable_on_log_Icc_one {a b : ℝ}
    (h₁ : 1 ≤ a) (h₂ : a < b) :
    MeasureTheory.IntegrableOn Real.log (Set.Icc a b) := by
  sorry
