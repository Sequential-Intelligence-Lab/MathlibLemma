import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.isUnit_iff_det_ne_zero
    {K} [Field K] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n K) :
    IsUnit A ↔ A.det ≠ 0 := by
  have h_main : IsUnit A ↔ IsUnit A.det := by
    rw [Matrix.isUnit_iff_isUnit_det]
    <;>
    simp_all
  
  have h_field : IsUnit A.det ↔ A.det ≠ 0 := by
    constructor
    · -- Prove the forward direction: if A.det is a unit, then A.det ≠ 0
      intro h
      have h₁ : A.det ≠ 0 := by
        intro h₂
        rw [h₂] at h
        -- If A.det = 0, then it cannot be a unit in a field
        exact not_isUnit_zero h
      exact h₁
    · -- Prove the backward direction: if A.det ≠ 0, then A.det is a unit
      intro h
      -- In a field, every non-zero element is a unit
      have h₁ : IsUnit A.det := by
        apply isUnit_iff_ne_zero.mpr
        exact h
      exact h₁
  
  have h_final : IsUnit A ↔ A.det ≠ 0 := by
    rw [h_main]
    rw [h_field]
  
  exact h_final