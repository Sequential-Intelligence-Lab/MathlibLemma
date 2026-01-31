import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_succ_le_of_forall {s : Finset ℕ} (hs : s.Nonempty) {k : ℕ}
    (h : ∀ n ∈ s, n ≤ k) :
    s.max' hs ≤ k := by
  have h₁ : s.max' hs ∈ s := by
    apply Finset.max'_mem
    <;> assumption
  
  have h₂ : s.max' hs ≤ k := by
    have h₃ : s.max' hs ≤ k := h (s.max' hs) h₁
    exact h₃
  
  exact h₂