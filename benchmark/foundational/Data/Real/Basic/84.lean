import Mathlib

lemma IsPowMul.map_pow_succ {R : Type*} [Monoid R]
    {f : R → ℝ} (hf : IsPowMul f) (a : R) (n : ℕ) :
    f (a ^ (n + 1)) = f a ^ (n + 1) := by
  sorry
