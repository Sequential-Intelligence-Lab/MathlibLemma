import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.im_comp_ofReal (K : Type*) [RCLike K] :
    RCLike.im ∘ (fun x : ℝ => (x : K)) = fun _ => (0 : ℝ) := by
  ext x
  -- Simplify the composition by applying the definition of `RCLike.im` and properties of `ofReal`.
  simp [RCLike.im]
  -- Use the property that the imaginary part of a real number embedded into `K` is zero.
  <;> simp [RCLike.ofReal]
  -- Apply `aesop` to handle any remaining logical implications or equalities.
  <;> aesop