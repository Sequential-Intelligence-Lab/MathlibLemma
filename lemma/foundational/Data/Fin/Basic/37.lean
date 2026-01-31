import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.max_eq_left {n : ℕ} {i j : Fin n} (h : j ≤ i) : max i j = i := by
  have h₁ : max i j ≤ i := by
    apply max_le <;>
    (try simp_all [le_refl]) <;>
    (try assumption)
    <;>
    (try simp_all [Fin.le_iff_val_le_val])
    <;>
    (try omega)
  
  have h₂ : i ≤ max i j := by
    apply le_max_left
  
  have h₃ : max i j = i := by
    apply le_antisymm h₁ h₂
  
  exact h₃