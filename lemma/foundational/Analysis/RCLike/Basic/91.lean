import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.ofReal_comp_re (K : Type*) [RCLike K] :
    (fun z : K => (RCLike.re z : K)) = RCLike.ofReal ∘ RCLike.re := by
  -- Use the extensionality principle to show that two functions are equal if they map equal inputs to equal outputs.
  ext z
  -- Simplify the left-hand side: directly applies RCLike.re to z.
  simp [RCLike.ofReal_re]