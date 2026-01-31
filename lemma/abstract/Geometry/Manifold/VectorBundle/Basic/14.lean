import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open scoped Manifold Bundle Topology ContDiff

/-- Surjectivity of the projection from `ModelProd EB F` to `EB`.
This is just a statement; the proof is omitted (`sorry`). -/
theorem Bundle.submersion_proj_totalSpace
    {EB F : Type*} :
    Function.Surjective (fun v : ModelProd EB F => v.1) := by
  intro b
  refine ⟨⟨b, ?_⟩, rfl⟩
  all_goals try { sorry }