import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.mul_val_eq_val_mul {n : ℕ} (i j : Fin n) :
    (i * j).val = (i.val * j.val) % n := by
  have h_main : (i * j).val = (i.val * j.val) % n := by
    simp [Fin.ext_iff, Fin.val_mul]
    <;>
    rfl
  
  apply h_main