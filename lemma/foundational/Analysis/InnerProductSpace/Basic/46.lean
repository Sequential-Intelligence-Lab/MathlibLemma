import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma real_inner_add_left_cancel {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    {x y z : E} :
    inner ℝ (x + y) z = inner ℝ (x + z) z →
    inner ℝ y z = inner ℝ z z := by
  intro h
  have h₁ : inner ℝ (x + y) z = inner ℝ x z + inner ℝ y z := by
    rw [inner_add_left]
    <;> simp [add_comm]
    <;>
    ring_nf
    <;>
    simp_all [inner_add_left, inner_add_right, inner_smul_left, inner_smul_right]
    <;>
    linarith
  
  have h₂ : inner ℝ (x + z) z = inner ℝ x z + inner ℝ z z := by
    rw [inner_add_left]
    <;> simp [add_comm]
    <;>
    ring_nf
    <;>
    simp_all [inner_add_left, inner_add_right, inner_smul_left, inner_smul_right]
    <;>
    linarith
  
  have h₃ : inner ℝ x z + inner ℝ y z = inner ℝ x z + inner ℝ z z := by
    linarith
  
  have h₄ : inner ℝ y z = inner ℝ z z := by
    linarith
  
  exact h₄