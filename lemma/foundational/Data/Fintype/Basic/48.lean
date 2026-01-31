import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.univ_filter_false {α : Type*} [Fintype α] :
    (Finset.univ.filter fun _ : α => False) = ∅ := by
  -- Use the extensionality lemma to show that the filtered set is empty.
  apply Finset.ext
  -- Introduce an arbitrary element `a` of type `α`.
  intro a
  -- Simplify the membership condition in the filtered set.
  -- The predicate `fun _ : α => False` always returns `False`, so `a` cannot be in the filtered set.
  simp
  -- Since the predicate is always `False`, the membership condition is `False`.
  -- Therefore, `a` is not in the filtered set, proving that the filtered set is empty.
  <;> simp