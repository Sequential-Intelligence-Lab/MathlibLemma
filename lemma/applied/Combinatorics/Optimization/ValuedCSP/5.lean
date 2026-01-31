import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma le_of_ne_of_lt [PartialOrder α] {a b : α} (h₁ : a ≠ b) (h₂ : a < b) : a ≤ b := by
  -- Use the `le_of_lt` lemma to convert the strict inequality `a < b` to the non-strict inequality `a ≤ b`.
  exact le_of_lt h₂