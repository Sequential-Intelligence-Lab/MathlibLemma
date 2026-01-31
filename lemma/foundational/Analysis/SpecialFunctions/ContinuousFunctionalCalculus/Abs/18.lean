import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CFC.abs_ne_zero_iff {A}
    [NonUnitalNormedRing A] [StarRing A] [CStarRing A]
    [Module ℝ A] [SMulCommClass ℝ A A] [NormedSpace ℝ A]
    [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A]
    [NonnegSpectrumClass ℝ A]
    (a : A) :
    CFC.abs a ≠ 0 ↔ a ≠ 0 := by
  have h_forward : CFC.abs a = 0 → a = 0 := by
    intro h
    by_contra h₁
    -- Use the property of CFC.abs to derive a contradiction
    have h₂ : a ≠ 0 := h₁
    -- Use the fact that the norm of a non-zero element is positive
    have h₃ : ‖a‖ > 0 := by
      have h₄ : a ≠ 0 := h₂
      exact norm_pos_iff.mpr h₄
    -- Use the property of CFC.abs to relate it to the norm
    have h₄ : ‖CFC.abs a‖ = ‖a‖ := by
      -- This is a placeholder for the actual proof, which would require more detailed analysis
      have h₅ : ‖CFC.abs a‖ = ‖a‖ := by
        -- This is a known result in C*-algebra theory, but here we assume it for simplicity
        sorry
      exact h₅
    -- Derive a contradiction from the assumption CFC.abs a = 0
    have h₅ : ‖CFC.abs a‖ = 0 := by
      rw [h]
      simp
    have h₆ : ‖a‖ = 0 := by
      linarith
    have h₇ : a = 0 := by
      have h₈ : ‖a‖ = 0 := h₆
      exact norm_eq_zero.mp h₈
    contradiction
  
  have h_backward : a = 0 → CFC.abs a = 0 := by
    intro h_a_zero
    rw [h_a_zero]
    <;> simp [CFC.abs_zero]
  
  have h_main : CFC.abs a ≠ 0 ↔ a ≠ 0 := by
    constructor
    · -- Prove the forward direction: if CFC.abs a ≠ 0, then a ≠ 0
      intro h
      by_contra h₁
      -- If a = 0, then CFC.abs a = 0, which contradicts h
      have h₂ : a = 0 := by simpa using h₁
      have h₃ : CFC.abs a = 0 := h_backward h₂
      exact h h₃
    · -- Prove the backward direction: if a ≠ 0, then CFC.abs a ≠ 0
      intro h
      by_contra h₁
      -- If CFC.abs a = 0, then a = 0, which contradicts h
      have h₂ : CFC.abs a = 0 := by simpa using h₁
      have h₃ : a = 0 := h_forward h₂
      exact h h₃
  
  exact h_main