import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_mem_filter_ge {α} [LinearOrder α] {s : Finset α}
    (hs : s.Nonempty) :
    s.max' hs ∈ s.filter (fun x ↦ s.min' hs ≤ x) := by
  have h₁ : s.max' hs ∈ s := by
    apply Finset.max'_mem
    <;> assumption
  
  have h₂ : s.min' hs ≤ s.max' hs := by
    have h₃ : s.min' hs ≤ s.max' hs := by
      -- Use the fact that the minimum element is less than or equal to every element in the set,
      -- including the maximum element.
      have h₄ : s.min' hs ≤ s.max' hs := by
        -- Since s.max' hs is an element of s, and s.min' hs is the smallest element in s,
        -- we have s.min' hs ≤ s.max' hs.
        have h₅ : s.max' hs ∈ s := h₁
        have h₆ : s.min' hs ≤ s.max' hs := Finset.min'_le s (s.max' hs) h₅
        exact h₆
      exact h₄
    exact h₃
  
  have h₃ : s.max' hs ∈ s.filter (fun x ↦ s.min' hs ≤ x) := by
    apply Finset.mem_filter.mpr
    constructor
    · -- Prove that s.max' hs ∈ s
      exact h₁
    · -- Prove that s.min' hs ≤ s.max' hs
      exact h₂
  
  exact h₃