import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_affine_id (a b c d : ℝ) :
    ∫ x in a..b, (c * x + d) = c * (b^2 - a^2) / 2 + d * (b - a) := by
  have h_main : ∫ x in a..b, (c * x + d) = c * (b^2 - a^2) / 2 + d * (b - a) := by
    have h₁ : ∫ x in a..b, (c * x + d) = (c * b ^ 2 / 2 + d * b) - (c * a ^ 2 / 2 + d * a) := by
      -- Use the fundamental theorem of calculus to compute the integral
      have h₂ : ∫ x in a..b, (c * x + d) = ∫ x in a..b, (c * x + d) := rfl
      rw [h₂]
      -- Compute the antiderivative and evaluate it at the bounds
      have h₃ : ∫ x in a..b, (c * x + d) = (c * b ^ 2 / 2 + d * b) - (c * a ^ 2 / 2 + d * a) := by
        -- Use the fundamental theorem of calculus to compute the integral
        simp [mul_comm c]
        <;>
        (try norm_num) <;>
        (try ring_nf) <;>
        (try field_simp) <;>
        (try norm_num) <;>
        (try ring_nf) <;>
        (try
          {
            -- Use the fundamental theorem of calculus to compute the integral
            rw [intervalIntegral.integral_comp_mul_left (fun x => x + d / c)]
            <;>
            (try norm_num) <;>
            (try ring_nf) <;>
            (try field_simp) <;>
            (try norm_num) <;>
            (try ring_nf)
          }) <;>
        (try
          {
            -- Use the fundamental theorem of calculus to compute the integral
            simp [intervalIntegral.integral_comp_mul_left]
            <;>
            (try norm_num) <;>
            (try ring_nf) <;>
            (try field_simp) <;>
            (try norm_num) <;>
            (try ring_nf)
          }) <;>
        (try
          {
            -- Use the fundamental theorem of calculus to compute the integral
            norm_num [intervalIntegral.integral_comp_mul_left]
            <;>
            ring_nf
            <;>
            field_simp
            <;>
            norm_num
            <;>
            linarith
          }) <;>
        (try
          {
            -- Use the fundamental theorem of calculus to compute the integral
            simp_all [intervalIntegral.integral_comp_mul_left]
            <;>
            norm_num
            <;>
            ring_nf
            <;>
            field_simp
            <;>
            norm_num
            <;>
            linarith
          })
        <;>
        (try
          {
            -- Use the fundamental theorem of calculus to compute the integral
            simp_all [mul_comm]
            <;>
            norm_num
            <;>
            ring_nf
            <;>
            field_simp
            <;>
            norm_num
            <;>
            linarith
          })
        <;>
        (try
          {
            -- Use the fundamental theorem of calculus to compute the integral
            simp_all [mul_comm]
            <;>
            norm_num
            <;>
            ring_nf
            <;>
            field_simp
            <;>
            norm_num
            <;>
            linarith
          })
        <;>
        (try
          {
            -- Use the fundamental theorem of calculus to compute the integral
            simp_all [mul_comm]
            <;>
            norm_num
            <;>
            ring_nf
            <;>
            field_simp
            <;>
            norm_num
            <;>
            linarith
          })
        <;>
        (try
          {
            -- Use the fundamental theorem of calculus to compute the integral
            simp_all [mul_comm]
            <;>
            norm_num
            <;>
            ring_nf
            <;>
            field_simp
            <;>
            norm_num
            <;>
            linarith
          })
      rw [h₃]
    rw [h₁]
    -- Simplify the expression to match the target form
    ring_nf
    <;>
    (try norm_num) <;>
    (try ring_nf) <;>
    (try field_simp) <;>
    (try norm_num) <;>
    (try linarith)
  
  apply h_main