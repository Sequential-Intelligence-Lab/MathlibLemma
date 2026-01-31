import Mathlib

lemma IsPowMul.mul {R : Type*} [Monoid R]
    {f g : R → ℝ} (hf : IsPowMul f) (hg : IsPowMul g) :
    IsPowMul fun x => f x * g x := by
  sorry
