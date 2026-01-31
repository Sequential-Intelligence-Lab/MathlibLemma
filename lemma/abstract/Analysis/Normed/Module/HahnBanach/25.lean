import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma StrongDual.completeSpace {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [CompleteSpace E] :
    CompleteSpace (StrongDual 𝕜 E) := by
  -- Use the fact that the strong dual of a Banach space is complete.
  haveI : CompleteSpace (StrongDual 𝕜 E) := inferInstance
  -- The proof is completed by the fact that the strong dual of a complete normed space is complete.
  <;> simp_all