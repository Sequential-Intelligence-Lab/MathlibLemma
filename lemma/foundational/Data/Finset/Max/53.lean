import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Finset.exists_between_min'_max'_strict {α} [LinearOrder α] {s : Finset α}
    (hs : s.Nonempty) :
    ∀ x, s.min' hs < x → x < s.max' hs → ∃ y ∈ s, x < y ∧ y ≤ s.max' hs := by
  intro x h1 h2
  use s.max' hs
  constructor
  · -- Show that s.max' hs ∈ s
    apply Finset.max'_mem
    all_goals try exact hs
  constructor
  · -- Show that x < s.max' hs
    exact h2
  · -- Show that s.max' hs ≤ s.max' hs
    exact le_rfl