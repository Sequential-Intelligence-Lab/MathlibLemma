import Mathlib

open scoped BigOperators
open Filter Topology

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] [CompleteSpace E]

variable (f : E → ℝ) (s : Set E) (x : E)

theorem gradientWithin_eq_zero_of_locallyConstant
    (h : ∀ᶠ y in 𝓝[s] x, f y = f x) :
    gradientWithin f s x = 0 := by
  sorry