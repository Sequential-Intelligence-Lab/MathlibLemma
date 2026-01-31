import Mathlib

/-! ### Convex / Concave: basic structural lemmas -/

lemma ConvexOn.hasDerivAt_real_subgradient
    {f : ℝ → ℝ}
    (hf : ConvexOn ℝ (Set.univ : Set ℝ) f) (x : ℝ)
    (g : ℝ)
    (hg  : ∀ y, f y ≥ f x + g * (y - x))
    (hg' : ∀ y, f y ≥ f x + g * (x - y)) :
    HasDerivAt f g x := by
  sorry