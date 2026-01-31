import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_unique {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) {a : α}
    (ha : a ∈ s) (hmin : ∀ b ∈ s, a ≤ b) :
    s.min' hs = a := by
  have h₁ : s.min' hs ≤ a := by
    have h₁₁ : s.min' hs ≤ a := by
      apply Finset.min'_le
      <;> assumption
    exact h₁₁
  
  have h₂ : a ≤ s.min' hs := by
    have h₂₁ : a ≤ s.min' hs := by
      have h₂₂ : s.min' hs ∈ s := Finset.min'_mem s hs
      have h₂₃ : a ≤ s.min' hs := hmin (s.min' hs) h₂₂
      exact h₂₃
    exact h₂₁
  
  have h₃ : s.min' hs = a := by
    apply le_antisymm
    · -- Prove s.min' hs ≤ a
      exact h₁
    · -- Prove a ≤ s.min' hs
      exact h₂
  
  exact h₃