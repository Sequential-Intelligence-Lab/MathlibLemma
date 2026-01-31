import Mathlib

lemma Finset.sum_Ico_monotone_ge_tail
    {f : ℕ → ℕ}
    (hf : ∀ ⦃m n⦄, m ≤ n → f m ≤ f n) (m n : ℕ) :
    (∑ k ∈ Finset.Ico m n, f k) ≤ (n - m) • f (n - 1) := by
  sorry