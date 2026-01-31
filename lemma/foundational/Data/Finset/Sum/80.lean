import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_attach_sum {α β}
    [AddCommMonoid α] [AddCommMonoid β]
    (s : Finset α) (t : Finset β) :
    (s.disjSum t).card =
      s.card + t.card := by
  -- Use the property that the cardinality of the disjoint sum of two finite sets is the sum of their cardinalities.
  rw [Finset.card_disjSum]
  -- Simplify the expression by using the fact that the cardinality of a finite set is a natural number.
  <;> simp [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]