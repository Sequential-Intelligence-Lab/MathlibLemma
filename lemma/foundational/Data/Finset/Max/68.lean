import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_mem_of_subset {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (hst : s ⊆ t) :
    s.max' hs ∈ t := by
  have h₁ : s.max' hs ∈ s := by
    apply Finset.max'_mem
    <;> assumption
  
  have h₂ : s.max' hs ∈ t := by
    apply hst
    exact h₁
  
  exact h₂