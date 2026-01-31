import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.add_right_cancel {n : ℕ} {i j k : Fin n} (h : i + k = j + k) : i = j := by
  -- Extract the natural number representations of i, j, and k
  have h1 : i.val + k.val = j.val + k.val := by simp_all [Fin.val_add]
  -- Apply the cancellation law for addition in natural numbers
  have h2 : i.val = j.val := Nat.add_right_cancel h1
  -- Conclude that i = j using the equality of their natural number representations
  simp_all [Fin.ext_iff]