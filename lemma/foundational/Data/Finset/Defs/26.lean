import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.ssubset_of_subset_of_not_subset {α} {s t u : Finset α}
    (h₁ : s ⊆ t) (h₂ : ¬ t ⊆ u) (h₃ : u ⊆ t) : u ⊂ t := by
  -- Use the definition of proper subset, which requires u to be a subset of t and t not to be a subset of u.
  constructor
  -- First, confirm that u is a subset of t, which is given by h₃.
  exact h₃
  -- Second, use the given condition that t is not a subset of u, which is h₂.
  exact h₂