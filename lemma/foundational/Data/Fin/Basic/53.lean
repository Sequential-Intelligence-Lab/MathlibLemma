import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.isGreatest_last {n : ℕ} : IsGreatest (Set.univ : Set (Fin (n + 1))) (Fin.last n) := by
  have h₁ : Fin.last n ∈ (Set.univ : Set (Fin (n + 1))) := by
    trivial
  
  have h₂ : ∀ (x : Fin (n + 1)), x ∈ (Set.univ : Set (Fin (n + 1))) → x ≤ Fin.last n := by
    intro x _
    have h₃ : x.val < n + 1 := x.prop
    have h₄ : x.val ≤ n := by
      omega
    have h₅ : (Fin.last n : Fin (n + 1)).val = n := by
      simp [Fin.last]
      <;> omega
    have h₆ : x.val ≤ (Fin.last n : Fin (n + 1)).val := by
      rw [h₅]
      <;> exact h₄
    exact Fin.le_def.mpr h₆
  
  have h_main : IsGreatest (Set.univ : Set (Fin (n + 1))) (Fin.last n) := by
    refine' ⟨h₁, _⟩
    intro x hx
    exact h₂ x hx
  
  exact h_main