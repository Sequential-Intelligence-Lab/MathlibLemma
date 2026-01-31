import Mathlib

open Manifold

variable
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-! ### Riemannian distance and basic properties -/
lemma riemannianEDist_vectorSpace_add
    [InnerProductSpace ℝ E] (z x y : E) :
    riemannianEDist (I := 𝓘(ℝ, E)) (x + z) (y + z)
      = riemannianEDist (I := 𝓘(ℝ, E)) x y := by
  sorry