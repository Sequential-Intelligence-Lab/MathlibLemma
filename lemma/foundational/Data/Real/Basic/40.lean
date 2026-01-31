import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.cast_id_ratCast_inj {p q : ℚ} :
    (p : ℝ) = q ↔ p = q := by
  have h_forward : ((p : ℝ) = q → p = q) := by
    intro h
    norm_cast at h ⊢
    <;> simp_all [Rat.cast_inj]
    <;> linarith
  
  have h_backward : (p = q → (p : ℝ) = q) := by
    intro h
    norm_cast
    <;> simp_all
  
  have h_main : ((p : ℝ) = q ↔ p = q) := by
    constructor
    · intro h
      exact h_forward h
    · intro h
      exact h_backward h
  
  exact h_main