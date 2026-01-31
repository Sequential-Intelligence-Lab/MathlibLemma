import Mathlib

lemma Real.not_summable_indicator_one_div_natCast_of_infinite
    (s : Set ℕ) (hs : s.Infinite) :
    ¬ Summable (s.indicator fun n : ℕ => (1 / n : ℝ)) := by
  sorry
