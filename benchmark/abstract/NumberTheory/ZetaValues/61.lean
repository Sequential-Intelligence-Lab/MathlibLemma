import Mathlib

lemma hasSum_zeta_nat_continuous (k : ℕ) (hk : k ≠ 0) :
    Continuous (fun x : ℝ =>
      ∑' n : ℕ, 1 / (n : ℝ)^(2*k) * Real.cos (2*Real.pi*n*x)) := by
  sorry
