import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_eq_of_forall_le_iff {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty)
    {a b : α} (ha : a ∈ s) (hb : b ∈ s)
    (h : ∀ x ∈ s, x ≤ a ↔ x ≤ b) :
    a = b := by
  -- Use the given condition to show that 'a' and 'b' are both maximum elements in the set.
  have h' := h a ha
  have h'' := h b hb
  -- Simplify the conditions to show that 'a' is less than or equal to 'b' and vice versa.
  simp at h' h''
  -- Use the antisymmetry property of partial orders to conclude that 'a' equals 'b'.
  exact le_antisymm h' h''