import Mathlib

open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {H : Type*} [TopologicalSpace H]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {I : ModelWithCorners 𝕜 E H}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {H' : Type*} [TopologicalSpace H']
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {I' : ModelWithCorners 𝕜 E' H'}
variable {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']

/-! ### Basic properties of `IsManifold` and `minSmoothness` -/

lemma VectorField.mpullbackWithin_smul'
    {f : M → M'} {V : ∀ x : M', TangentSpace I' x} {s : Set M} {c : 𝕜} :
    VectorField.mpullbackWithin I I' f (c • V) s
      = c • VectorField.mpullbackWithin I I' f V s := by
  classical
  -- pointwise function extensionality
  ext x
  -- split on whether x ∈ s, to unfold the definition of mpullbackWithin
  by_cases hx : x ∈ s
  · -- on s: use the definition and linearity of the derivative
    simp [VectorField.mpullbackWithin, hx]
  · -- off s: both sides are zero
    simp [VectorField.mpullbackWithin, hx]