import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.subset_of_ssubset_or_eq {α} {s t : Finset α}
    (h : s ⊂ t ∨ s = t) : s ⊆ t := by
  -- Consider the two cases given by the disjunction `h`
  rcases h with (h | h)
  -- Case 1: `s ⊂ t`
  -- By definition of proper subset, `s ⊂ t` implies `s ⊆ t`
  <;> simp_all [Finset.ssubset_def]
  -- Case 2: `s = t`
  -- If `s = t`, then `s ⊆ t` is trivially true
  <;> tauto