import Mathlib

lemma IsPowMul.map_pow_le {R : Type*} [Monoid R]
    {f : R → ℝ} (hf : IsPowMul f) (a : R) (n : ℕ) (hn : 1 ≤ n) :
    |f (a ^ n)| = |f a ^ n| := by
  sorry
