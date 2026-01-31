import Mathlib

lemma EuclideanSpace.norm_eq_zero_iff {𝕜 : Type*} [RCLike 𝕜]
    {n : Type*} [Fintype n] (x : EuclideanSpace 𝕜 n) :
    ‖x‖ = 0 ↔ x = 0 := by
  simpa using (norm_eq_zero (x := x))