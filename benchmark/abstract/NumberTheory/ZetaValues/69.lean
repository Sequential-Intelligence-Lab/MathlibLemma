import Mathlib

lemma bernoulliFun_tendsto_atTop_ratio (k : ℕ) :
    Filter.Tendsto (fun x : ℝ => bernoulliFun k x / x^(k+1))
      Filter.atTop (Filter.principal {0}) := by
  sorry
