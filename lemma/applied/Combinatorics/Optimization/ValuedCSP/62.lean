import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.eq_of_veq {n} {i j : Fin n} (h : i.val = j.val) : i = j := by
  have h_main : i = j := by
    apply Fin.ext
    <;> simp_all
    <;> aesop
  
  apply h_main