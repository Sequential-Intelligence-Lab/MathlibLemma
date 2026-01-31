import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma EuclideanSpace.toEuclideanLin_surjective
    {𝕜 : Type*} [RCLike 𝕜]
    {m n : Type*} [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n] :
    Function.Surjective (Matrix.toEuclideanLin : Matrix m n 𝕜 → _) := by
  have h_main : Function.Surjective (Matrix.toEuclideanLin : Matrix m n 𝕜 → _) := by
    apply LinearEquiv.surjective
    <;> infer_instance
  exact h_main