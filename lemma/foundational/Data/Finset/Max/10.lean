import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_filter_le {α} [LinearOrder α] (s : Finset α) (a : α)
    (hs : (s.filter fun x ↦ x ≤ a).Nonempty) :
    ((s.filter fun x ↦ x ≤ a).max' hs) ≤ a := by
  have h_main : ((s.filter fun x ↦ x ≤ a).max' hs) ∈ (s.filter fun x ↦ x ≤ a) := by
    apply Finset.max'_mem
    <;> assumption
  
  have h_final : ((s.filter fun x ↦ x ≤ a).max' hs) ≤ a := by
    have h₁ : ((s.filter fun x ↦ x ≤ a).max' hs) ∈ (s.filter fun x ↦ x ≤ a) := h_main
    have h₂ : ∀ (x : α), x ∈ (s.filter fun x ↦ x ≤ a) → x ≤ a := by
      intro x hx
      -- Extract the condition from the filter
      simp only [Finset.mem_filter] at hx
      exact hx.2
    -- Apply the condition to the maximum element
    exact h₂ ((s.filter fun x ↦ x ≤ a).max' hs) h₁
  
  exact h_final