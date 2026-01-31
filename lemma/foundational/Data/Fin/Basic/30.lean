import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.last_le_of_lt {n : ℕ} {i : Fin (n + 1)} (h : Fin.last n < i) : False := by
  have h₁ : i.val ≤ n := by
    have h₂ : i.val < n + 1 := i.isLt
    omega
  
  have h₂ : n < i.val := by
    have h₃ : (Fin.last n : Fin (n + 1)) < i := h
    have h₄ : (Fin.last n : Fin (n + 1)).val < i.val := by
      -- Unfold the definition of `<` for `Fin` types, which compares the underlying natural numbers.
      simpa [Fin.ext_iff] using h₃
    -- Simplify the value of `Fin.last n` to `n`.
    have h₅ : (Fin.last n : Fin (n + 1)).val = n := by
      simp [Fin.last]
      <;> omega
    -- Substitute the value of `Fin.last n` into the inequality.
    rw [h₅] at h₄
    exact h₄
  
  have h₃ : False := by
    have h₄ : n < i.val := h₂
    have h₅ : i.val ≤ n := h₁
    -- Using the two inequalities, we derive a contradiction by showing n < n.
    omega
  
  exact h₃