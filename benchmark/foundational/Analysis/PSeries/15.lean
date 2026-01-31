import Mathlib

lemma Finset.sum_Ioc_inv_sq_ge {k n : ℕ}
    (hk : k ≠ 0) (hkn : k ≤ n) :
    (∑ i ∈ Finset.Ioc k n, ((i : ℝ) ^ 2)⁻¹) ≥ (n : ℝ)⁻¹ - (k : ℝ)⁻¹ := by
  sorry