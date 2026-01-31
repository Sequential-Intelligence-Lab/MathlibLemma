import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.cast_val {n m : ℕ} (h : n = m) (i : Fin n) :
    (Fin.cast h i).val = i.val := by
  -- Simplify the goal using the given equality h : n = m.
  -- This allows us to work with the fact that n and m are the same.
  simp_all [Fin.val]
  -- Since n = m, the elements of Fin n and Fin m are in one-to-one correspondence.
  -- The cast function preserves this correspondence, so the underlying natural number remains the same.
  <;> rfl