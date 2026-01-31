import Mathlib

lemma IsPowMul.map_pow_two {R : Type*} [Monoid R]
    {f : R → ℝ} (hf : IsPowMul f) (a : R) :
    f (a ^ 2) = f a ^ 2 := by
  sorry
