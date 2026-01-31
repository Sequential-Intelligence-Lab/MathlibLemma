import Mathlib

lemma IsPowMul.map_pow_le {R : Type*} [Monoid R]
    {f : R → ℝ} (hf : IsPowMul f) (a : R) (n : ℕ) (hn : 1 ≤ n) :
    |f (a ^ n)| = |f a ^ n| := by
  -- `hf` states: ∀ a n, 1 ≤ n → f (a ^ n) = f a ^ n
  have h : f (a ^ n) = f a ^ n := hf a hn
  simpa [h]