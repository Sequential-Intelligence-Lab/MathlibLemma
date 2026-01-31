import Mathlib

open scoped Manifold Bundle Topology ContDiff

/-- Surjectivity of the projection from `ModelProd EB F` to `EB`.
This is just a statement; the proof is omitted (`sorry`). -/
lemma Bundle.submersion_proj_totalSpace
    {EB F : Type*} :
    Function.Surjective (fun v : ModelProd EB F => v.1) := by
  sorry