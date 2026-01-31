import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.eq_last_of_not_lt_last {n : ℕ} {i : Fin (n + 1)} (h : ¬ i < Fin.last n) :
    i = Fin.last n := by
  have h₁ : i.val ≥ n := by
    by_contra h₁
    -- If i.val < n, then i < Fin.last n, which contradicts the hypothesis.
    have h₂ : i.val < n := by
      omega
    have h₃ : i < Fin.last n := by
      -- Prove that i < Fin.last n using the fact that i.val < n.
      have h₄ : i.val < (Fin.last n).val := by
        simp [Fin.last, Fin.val_mk] at h₂ ⊢
        <;> omega
      exact Fin.lt_iff_val_lt_val.mpr h₄
    -- Contradiction arises as h : ¬ i < Fin.last n.
    exact h h₃
  
  have h₂ : i.val < n + 1 := by
    -- Since i is an element of Fin (n + 1), its value is less than n + 1.
    have h₂ : i.val < n + 1 := i.is_lt
    exact h₂
  
  have h₃ : i.val = n := by
    -- Using the inequalities i.val ≥ n and i.val < n + 1, we deduce i.val = n.
    have h₃ : i.val = n := by
      omega
    exact h₃
  
  have h₄ : i = Fin.last n := by
    -- Since i.val = n, we can conclude that i = Fin.last n.
    apply Fin.ext
    <;> simp_all [Fin.last, Fin.val_mk]
    <;> omega
  
  exact h₄