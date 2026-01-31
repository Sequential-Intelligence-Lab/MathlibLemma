import Mathlib

open Set

variable {E : Type _} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [FiniteDimensional ℝ E]

variable (f : E → ℝ) (s : Set E) (x : E)

theorem gradientWithin_eq_gradient_of_subset_interior
    (hs : s ⊆ interior s) (hx : x ∈ s) :
    gradientWithin f s x = gradient f x := by
  sorry