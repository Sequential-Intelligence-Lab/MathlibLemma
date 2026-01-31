import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_filter_ge {α} [LinearOrder α] (s : Finset α) (a : α)
    (hs : (s.filter fun x ↦ a ≤ x).Nonempty) :
    a ≤ (s.filter fun x ↦ a ≤ x).min' hs := by
  have h₁ : (s.filter fun x ↦ a ≤ x).min' hs ∈ s.filter (fun x ↦ a ≤ x) := by
    apply Finset.min'_mem
    <;> assumption
  
  have h₂ : a ≤ (s.filter fun x ↦ a ≤ x).min' hs := by
    have h₃ : ∀ (x : α), x ∈ s.filter (fun x ↦ a ≤ x) → a ≤ x := by
      intro x hx
      simp only [Finset.mem_filter] at hx
      -- For any x in the filtered set, the condition a ≤ x is satisfied.
      exact hx.2
    -- Since (s.filter fun x ↦ a ≤ x).min' hs is in the filtered set, we can apply h₃ to it.
    have h₄ : a ≤ (s.filter fun x ↦ a ≤ x).min' hs := h₃ _ h₁
    exact h₄
  
  exact h₂