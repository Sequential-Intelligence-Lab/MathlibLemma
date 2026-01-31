import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

noncomputable def Real.cauchySeq (x : ℝ) : ℝ := x

lemma Real.cauchy_inf (x y : ℝ) :
    Real.cauchySeq (x ⊓ y) = Real.cauchySeq x ⊓ Real.cauchySeq y := by
  have h_left : Real.cauchySeq (x ⊓ y) = x ⊓ y := by
    simp [Real.cauchySeq]
    <;>
    aesop
  
  have h_right : Real.cauchySeq x ⊓ Real.cauchySeq y = x ⊓ y := by
    simp [Real.cauchySeq]
    <;>
    aesop
  
  have h_main : Real.cauchySeq (x ⊓ y) = Real.cauchySeq x ⊓ Real.cauchySeq y := by
    rw [h_left, h_right]
    <;>
    aesop
  
  exact h_main