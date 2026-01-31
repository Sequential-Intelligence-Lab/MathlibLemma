import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.ofReal_comp_im (K : Type*) [RCLike K] :
    (fun z : K => (RCLike.im z : K)) = RCLike.ofReal ∘ RCLike.im := by
  ext z
  simp [RCLike.ofReal, RCLike.im]
  <;> rfl