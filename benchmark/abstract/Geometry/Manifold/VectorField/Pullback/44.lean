import Mathlib

open Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']

/-! ### Basic properties of `IsManifold` and `minSmoothness` -/

/-- A schematic lemma about pullback of vector fields by a continuous linear map.
    Statement is made type-correct; proof is omitted with `sorry`. -/
lemma VectorField.mpullback_linearMap
    (A : E →L[𝕜] E') :
    VectorField.mpullback
      𝓘(𝕜, E)
      𝓘(𝕜, E')
      A
      (fun x : E' => (0 : TangentSpace 𝓘(𝕜, E') x)) =
    fun x : E => (0 : TangentSpace 𝓘(𝕜, E) x) := by
  sorry