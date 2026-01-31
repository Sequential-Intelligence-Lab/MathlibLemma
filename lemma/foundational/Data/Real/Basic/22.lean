import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.mk_sub_mk (f g : CauSeq ℚ abs) :
    Real.mk f - Real.mk g = Real.mk (f - g) := by
  have h1 : (f - g : CauSeq ℚ abs) = (f + (-g) : CauSeq ℚ abs) := by
    ext n
    simp [sub_eq_add_neg]
    <;>
    ring_nf
    <;>
    simp_all [CauSeq]
    <;>
    norm_num
    <;>
    linarith
  
  have h2 : Real.mk (f - g) = Real.mk (f + (-g)) := by
    rw [h1]
    <;>
    simp [Real.mk]
  
  have h3 : Real.mk (f + (-g)) = Real.mk f + Real.mk (-g) := by
    -- Use the property of Real.mk that it preserves addition
    rw [Real.mk_add]
    <;>
    simp [Real.mk]
    <;>
    norm_num
  
  have h4 : Real.mk (-g) = -Real.mk g := by
    -- Use the property of Real.mk that it preserves negation
    rw [Real.mk_neg]
    <;>
    simp [Real.mk]
    <;>
    norm_num
  
  have h5 : Real.mk (f - g) = Real.mk f - Real.mk g := by
    calc
      Real.mk (f - g) = Real.mk (f + (-g)) := by rw [h2]
      _ = Real.mk f + Real.mk (-g) := by rw [h3]
      _ = Real.mk f + (-Real.mk g) := by rw [h4]
      _ = Real.mk f - Real.mk g := by
        simp [sub_eq_add_neg]
        <;>
        ring_nf
        <;>
        simp_all [CauSeq]
        <;>
        norm_num
  
  have h6 : Real.mk f - Real.mk g = Real.mk (f - g) := by
    rw [h5]
    <;>
    simp [sub_eq_add_neg]
    <;>
    ring_nf
    <;>
    simp_all [CauSeq]
    <;>
    norm_num
  
  exact h6