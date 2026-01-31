import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_singleton_right {α β} [DecidableEq (α ⊕ β)]
    (s : Finset α) (b : β) :
    s.disjSum ({b} : Finset β) =
      insert (Sum.inr b) (s.image Sum.inl) := by
  -- Use the `ext` tactic to show that the sets are equal by proving each is a subset of the other.
  ext x
  -- Simplify the membership conditions using `simp`.
  simp only [Finset.mem_disjSum, Finset.mem_insert, Finset.mem_singleton, Finset.mem_image,
    exists_prop, exists_eq_left, exists_eq_right]
  -- Use `aesop` to automatically handle the subset proofs.
  aesop