import Mathlib

open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {H : Type*} [TopologicalSpace H]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {I : ModelWithCorners 𝕜 E H}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]

/-- A lemma about pullback of vector fields along a diffeomorphism and its inverse.
We do *not* use `extChartAt` here to avoid needing a `ChartedSpace H E` instance. -/
lemma VectorField.mpullback_left_inv
    (f fInv : M → M)
    (hf : Continuous f) (hf' : Continuous fInv)
    (hcomp₁ : f ∘ fInv = id)
    (V : ∀ y : M, TangentSpace I y) (y : M) :
    VectorField.mpullback I I fInv
      (VectorField.mpullback I I f V) y
      = V y := by
  sorry