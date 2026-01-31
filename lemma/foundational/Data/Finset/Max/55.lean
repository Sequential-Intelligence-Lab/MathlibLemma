import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_mem_filter_le {α} [LinearOrder α] {s : Finset α}
    (hs : s.Nonempty) :
    s.min' hs ∈ s.filter (fun x ↦ x ≤ s.max' hs) := by
  have h_min_in_s : s.min' hs ∈ s := by
    apply Finset.min'_mem
  
  have h_min_le_max : s.min' hs ≤ s.max' hs := by
    have h₁ : s.min' hs ∈ s := Finset.min'_mem s hs
    have h₂ : s.max' hs ∈ s := Finset.max'_mem s hs
    have h₃ : s.min' hs ≤ s.max' hs := by
      -- Use the fact that the min is less than or equal to every element in the set, including the max.
      have h₄ : s.min' hs ≤ s.max' hs := by
        -- Since s.min' hs is the smallest element and s.max' hs is the largest, this must hold.
        have h₅ : s.min' hs ≤ s.max' hs := by
          -- Use the property that the min is less than or equal to all elements.
          have h₆ : ∀ (x : α), x ∈ s → s.min' hs ≤ x := by
            intro x hx
            apply Finset.min'_le
            <;> assumption
          -- Apply this property to s.max' hs.
          have h₇ : s.max' hs ∈ s := Finset.max'_mem s hs
          have h₈ : s.min' hs ≤ s.max' hs := h₆ (s.max' hs) h₇
          exact h₈
        exact h₅
      exact h₄
    exact h₃
  
  have h_final : s.min' hs ∈ s.filter (fun x ↦ x ≤ s.max' hs) := by
    apply Finset.mem_filter.mpr
    constructor
    · -- Prove that s.min' hs ∈ s
      exact h_min_in_s
    · -- Prove that s.min' hs ≤ s.max' hs
      exact h_min_le_max
  
  exact h_final