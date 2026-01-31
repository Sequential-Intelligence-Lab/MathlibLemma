import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.exists_mem_eq_min' {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    ∃ a ∈ s, a = s.min' hs := by
  have h_main : s.min' hs ∈ s := by
    apply Finset.min'_mem
  
  have h_final : ∃ a ∈ s, a = s.min' hs := by
    refine' ⟨s.min' hs, h_main, _⟩
    <;> rfl
  
  exact h_final