import Mathlib

lemma Real.not_summable_indicator_one_div_natCast_finite_compl
    (s : Set ℕ) (hs : sᶜ.Finite) :
    ¬ Summable (s.indicator fun n : ℕ => (1 / n : ℝ)) := by
  sorry
