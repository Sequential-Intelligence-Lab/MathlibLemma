import Mathlib

lemma IsPowMul.map_one_eq_one_of_le {R : Type*} [Monoid R]
    {f : R → ℝ} (hf : IsPowMul f) (h1 : 1 ≤ f 1) :
    f 1 = 1 := by
  sorry
