import Mathlib

open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {s : Set E}

/-! ### Basic properties of `IsManifold` and `minSmoothness` -/

lemma VectorField.mpullbackWithin_const_vectorSpace
    {f : E → E} {v : E} :
    VectorField.mpullbackWithin (𝓘(𝕜, E)) (𝓘(𝕜, E)) f (fun _ => v) s
      = fun x => (fderivWithin 𝕜 f s x).inverse v := by
  sorry