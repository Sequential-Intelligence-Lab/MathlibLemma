import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.orderIso_cast_val {m n : ℕ} (h : m = n) (i : Fin m) :
    (Fin.castOrderIso h i).val = i.val := by
  subst h
  simp [Fin.castOrderIso]
  <;> rfl