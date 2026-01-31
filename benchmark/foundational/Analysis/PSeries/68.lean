import Mathlib

lemma Real.not_summable_natCast_inv_from (k : ℕ) :
    ¬ Summable (fun n : ℕ => ((n + k : ℕ) : ℝ)⁻¹) := by
  sorry