import Mathlib

lemma Real.IsPowMul.comp_ring_hom
    {R S : Type*} [Monoid R] [Monoid S]
    (f : R → ℝ) (hf : IsPowMul f) (φ : S →* R) :
    IsPowMul (fun s => f (φ s)) := by
  sorry