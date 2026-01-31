import Mathlib

lemma Real.not_summable_indicator_one_div_natCast_subset
    {m : ℕ} (hm : m ≠ 0) (k : ZMod m) (s : Set ℕ)
    (hs : {n : ℕ | (n : ZMod m) = k} ⊆ s) :
    ¬ Summable (s.indicator fun n : ℕ => (1 / n : ℝ)) := by
  sorry
