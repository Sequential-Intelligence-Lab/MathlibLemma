import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.univ_filter_true {α : Type*} [Fintype α] :
    (Finset.univ.filter fun _ : α => True) = Finset.univ := by
  -- Use the fact that the condition is always true to simplify the proof.
  -- The filter condition `fun _ : α => True` ensures that all elements of `Finset.univ` are included in the filtered set.
  ext x
  -- Simplify the membership condition using the fact that the condition is always true.
  simp
  -- Since the condition is always true, the membership in the filtered set is equivalent to membership in `Finset.univ`.
  <;> simp [Finset.mem_univ]
  -- Use `aesop` to automatically handle the logical implications and complete the proof.
  <;> aesop