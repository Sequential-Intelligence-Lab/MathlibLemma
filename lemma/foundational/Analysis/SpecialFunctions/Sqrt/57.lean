import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_mul_sq (x y : ℝ) :
    √(x ^ 2 * y) = |x| * √y := by
  have h_main : √(x ^ 2 * y) = |x| * √y := by
    by_cases hy : y < 0
    · -- Case: y < 0
      have h₁ : Real.sqrt y = 0 := by
        rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
      have h₂ : Real.sqrt (x ^ 2 * y) = 0 := by
        by_cases hx : x = 0
        · -- Subcase: x = 0
          have h₃ : x ^ 2 * y = 0 := by
            rw [hx]
            <;> simp
            <;> linarith
          rw [h₃]
          simp [Real.sqrt_zero]
        · -- Subcase: x ≠ 0
          have h₃ : x ^ 2 * y < 0 := by
            have h₄ : x ^ 2 > 0 := by
              exact sq_pos_of_ne_zero hx
            nlinarith
          rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
      rw [h₂, h₁]
      <;> simp [abs_mul]
      <;> ring_nf
      <;> simp [hx]
    · -- Case: y ≥ 0
      have h₁ : 0 ≤ y := by linarith
      have h₂ : Real.sqrt (x ^ 2 * y) = Real.sqrt (x ^ 2) * Real.sqrt y := by
        have h₃ : 0 ≤ x ^ 2 := by positivity
        have h₄ : 0 ≤ y := by linarith
        rw [Real.sqrt_mul (by positivity)]
        <;>
        simp [h₃, h₄]
      have h₃ : Real.sqrt (x ^ 2) = |x| := by
        rw [Real.sqrt_sq_eq_abs]
      rw [h₂, h₃]
      <;>
      ring_nf
      <;>
      simp [abs_mul]
  exact h_main