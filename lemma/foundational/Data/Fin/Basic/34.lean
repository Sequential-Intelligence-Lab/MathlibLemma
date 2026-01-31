import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.lt_last_iff_ne_last' {n : ℕ} (i : Fin (n + 1)) : i < Fin.last n ↔ i ≠ Fin.last n := by
  have h_forward : i < Fin.last n → i ≠ Fin.last n := by
    intro h
    intro h_eq
    rw [h_eq] at h
    exact lt_irrefl _ h
  
  have h_backward : i ≠ Fin.last n → i < Fin.last n := by
    intro h_ne
    have h₁ : i.val < n + 1 := i.prop
    have h₂ : (Fin.last n : Fin (n + 1)) = ⟨n, by simp⟩ := rfl
    have h₃ : i.val ≤ n := by
      omega
    -- We need to show that i.val < n because if i.val = n, then i = Fin.last n
    have h₄ : i.val < n := by
      by_contra h₄
      -- If i.val is not less than n, then i.val = n
      have h₅ : i.val = n := by
        omega
      -- If i.val = n, then i = Fin.last n
      have h₆ : i = Fin.last n := by
        apply Fin.ext
        simp_all [Fin.last]
        <;> aesop
      -- This contradicts h_ne
      contradiction
    -- Now we know i.val < n, so i < Fin.last n
    have h₅ : i < Fin.last n := by
      simp_all [Fin.last, Fin.ext_iff]
      <;> omega
    exact h₅
  
  have h_main : i < Fin.last n ↔ i ≠ Fin.last n := by
    constructor
    · intro h
      exact h_forward h
    · intro h
      exact h_backward h
  
  exact h_main