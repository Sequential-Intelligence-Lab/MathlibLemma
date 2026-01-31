import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_ge_of_forall {s : Finset ℕ} (hs : s.Nonempty) {k : ℕ}
    (h : ∀ n ∈ s, k ≤ n) :
    k ≤ s.min' hs := by
  have h₁ : s.min' hs ∈ s := by
    apply Finset.min'_mem
    <;> assumption
  
  have h₂ : k ≤ s.min' hs := by
    have h₃ : k ≤ s.min' hs := h (s.min' hs) h₁
    exact h₃
  
  exact h₂