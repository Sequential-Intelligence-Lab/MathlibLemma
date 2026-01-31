import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_mem_of_subset {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (hst : s ⊆ t) :
    s.min' hs ∈ t := by
  have h_min_in_s : s.min' hs ∈ s := by
    apply Finset.min'_mem
    <;> assumption
  
  have h_min_in_t : s.min' hs ∈ t := by
    apply hst
    exact h_min_in_s
  
  exact h_min_in_t