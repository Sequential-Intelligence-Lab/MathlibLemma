import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_card_le {α β} (s : Finset α) (t : Finset β) :
    (s.disjSum t).card ≤ s.card + t.card := by
  -- We use the fact that the cardinality of the disjoint sum is the sum of the cardinalities of s and t.
  rw [Finset.card_disjSum]
  -- Since the cardinality of the disjoint sum is exactly the sum of the cardinalities of s and t, the inequality holds as an equality.
  <;> simp [add_comm, add_left_comm, add_assoc]
  -- This concludes the proof as the inequality is directly satisfied.
  <;> linarith