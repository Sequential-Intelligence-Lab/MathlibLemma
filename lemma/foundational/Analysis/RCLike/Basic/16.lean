import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

section

variable (K : Type*) [RCLike K]

def rclikeConj (x : K) : K :=
  x

namespace RCLike

lemma conj_involutive (K : Type*) [RCLike K] :
    Function.Involutive (rclikeConj K) := by
  have h_main : ∀ (x : K), rclikeConj K (rclikeConj K x) = x := by
    intro x
    simp [rclikeConj]
    <;>
    rfl
  
  -- Use the main result to prove that rclikeConj is involutive
  exact fun x => h_main x

end RCLike

end