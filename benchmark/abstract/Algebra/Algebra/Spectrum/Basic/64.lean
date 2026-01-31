import Mathlib

lemma spectrum.subset_twoPoint
    {𝕜 A : Type*} [Field 𝕜] [Ring A] [Algebra 𝕜 A]
    (a : A) (p q : 𝕜)
    (h : ∀ r ∈ spectrum 𝕜 a, r = p ∨ r = q) :
    spectrum 𝕜 a ⊆ {p, q} := by
  sorry
