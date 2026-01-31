import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.exists_mem_eq_max' {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    ∃ a ∈ s, a = s.max' hs := by
  have h_main : s.max' hs ∈ s := by
    apply Finset.max'_mem
    <;> assumption
  
  have h_final : ∃ a ∈ s, a = s.max' hs := by
    refine' ⟨s.max' hs, h_main, _⟩
    <;> rfl
  
  exact h_final