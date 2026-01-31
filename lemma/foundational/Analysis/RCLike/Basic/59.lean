import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

namespace MyRCLike

variable (K : Type*) [RCLike K]

noncomputable def conj (x : K) : K := x

lemma conj_zero :
    MyRCLike.conj (K := K) (0 : K) = 0 := by
  have h : MyRCLike.conj (K := K) (0 : K) = (0 : K) := by
    simp [conj]
    <;> rfl
  
  simpa using h