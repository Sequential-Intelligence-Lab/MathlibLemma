import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.add_comm' {n : ℕ} (i j : Fin n) :
    i + j = j + i := by
  have h₁ : (i + j).val = (i.val + j.val) % n := by
    simp [Fin.val_add]
    <;> rfl
  
  have h₂ : (j + i).val = (j.val + i.val) % n := by
    simp [Fin.val_add]
    <;> rfl
  
  have h₃ : i.val + j.val = j.val + i.val := by
    -- Use the commutativity of addition for natural numbers
    have h₃₁ : i.val + j.val = j.val + i.val := by
      -- Apply the commutative property of addition
      rw [add_comm]
    -- The result follows directly from the commutative property
    exact h₃₁
  
  have h₄ : (i.val + j.val) % n = (j.val + i.val) % n := by
    rw [h₃]
  
  have h₅ : (i + j).val = (j + i).val := by
    rw [h₁, h₂]
    <;> rw [h₄]
  
  have h₆ : i + j = j + i := by
    apply Fin.ext
    <;> simp_all [Fin.val_add]
    <;> omega
  
  exact h₆