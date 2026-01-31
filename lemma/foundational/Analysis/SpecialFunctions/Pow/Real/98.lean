import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_even_abs (x : ℝ) (n : ℕ) :
    x ^ (2 * n : ℝ) = |x| ^ (2 * n : ℝ) := by
  have h_pow : x ^ (2 * n : ℝ) = (x ^ 2) ^ n := by
    by_cases hx : x = 0
    · -- Case: x = 0
      subst hx
      by_cases hn : n = 0
      · -- Subcase: n = 0
        subst hn
        norm_num
      · -- Subcase: n > 0
        have h₁ : (0 : ℝ) ^ (2 * n : ℝ) = 0 := by
          have h₂ : (2 * n : ℝ) > 0 := by
            norm_cast
            <;> positivity
          have h₃ : (0 : ℝ) ^ (2 * n : ℝ) = 0 := by
            apply Real.zero_rpow
            linarith
          exact h₃
        have h₂ : ((0 : ℝ) ^ 2 : ℝ) ^ n = 0 := by
          norm_num [pow_eq_zero_iff]
          <;>
          (try simp_all)
          <;>
          (try norm_num)
          <;>
          (try omega)
        simp_all [pow_eq_zero_iff]
        <;>
        (try norm_num)
        <;>
        (try simp_all)
    · -- Case: x ≠ 0
      have h₁ : (x : ℝ) ^ (2 * n : ℝ) = (x : ℝ) ^ (2 * n : ℕ) := by
        -- Convert the real exponent to a natural number exponent
        have h₂ : (2 * n : ℝ) = (2 * n : ℕ) := by norm_cast
        rw [h₂]
        -- Use the property of real powers for integer exponents
        <;> simp [zpow_ofNat]
        <;> norm_cast
        <;> simp [Real.rpow_nat_cast]
        <;> norm_cast
      rw [h₁]
      -- Use the power of a power property to simplify
      have h₂ : (x : ℝ) ^ (2 * n : ℕ) = ((x : ℝ) ^ 2) ^ n := by
        rw [show (2 * n : ℕ) = n + n by ring]
        rw [pow_add]
        <;> ring_nf
        <;> simp [pow_mul]
        <;> ring_nf
      rw [h₂]
      <;> simp [pow_mul]
      <;> ring_nf
  
  have h_abs_pow : |x| ^ (2 * n : ℝ) = (x ^ 2) ^ n := by
    by_cases hx : x = 0
    · -- Case: x = 0
      subst hx
      by_cases hn : n = 0
      · -- Subcase: n = 0
        subst hn
        norm_num
      · -- Subcase: n > 0
        have h₁ : (|(0 : ℝ)| : ℝ) ^ (2 * n : ℝ) = 0 := by
          have h₂ : (2 * n : ℝ) > 0 := by
            norm_cast
            <;> positivity
          have h₃ : (|(0 : ℝ)| : ℝ) = 0 := by norm_num [abs_of_nonneg]
          rw [h₃]
          have h₄ : (0 : ℝ) ^ (2 * n : ℝ) = 0 := by
            apply Real.zero_rpow
            linarith
          exact h₄
        have h₂ : (( (0 : ℝ) ) ^ 2 : ℝ) ^ n = 0 := by
          norm_num [pow_eq_zero_iff]
          <;>
          (try simp_all)
          <;>
          (try norm_num)
          <;>
          (try omega)
        simp_all [pow_eq_zero_iff]
        <;>
        (try norm_num)
        <;>
        (try simp_all)
    · -- Case: x ≠ 0
      have h₁ : (|x| : ℝ) ^ (2 * n : ℝ) = (|x| : ℝ) ^ (2 * n : ℕ) := by
        -- Convert the real exponent to a natural number exponent
        have h₂ : (2 * n : ℝ) = (2 * n : ℕ) := by norm_cast
        rw [h₂]
        -- Use the property of real powers for integer exponents
        <;> simp [zpow_ofNat]
        <;> norm_cast
        <;> simp [Real.rpow_nat_cast]
        <;> norm_cast
      rw [h₁]
      -- Use the power of a power property to simplify
      have h₂ : (|x| : ℝ) ^ (2 * n : ℕ) = ((|x| : ℝ) ^ 2) ^ n := by
        rw [show (2 * n : ℕ) = n + n by ring]
        rw [pow_add]
        <;> ring_nf
        <;> simp [pow_mul]
        <;> ring_nf
      rw [h₂]
      have h₃ : (|x| : ℝ) ^ 2 = x ^ 2 := by
        simp [sq_abs]
      rw [h₃]
      <;> simp [pow_mul]
      <;> ring_nf
  
  have h_main : x ^ (2 * n : ℝ) = |x| ^ (2 * n : ℝ) := by
    calc
      x ^ (2 * n : ℝ) = (x ^ 2) ^ n := h_pow
      _ = |x| ^ (2 * n : ℝ) := by
        rw [h_abs_pow]
        <;>
        simp_all [abs_of_nonneg]
        <;>
        ring_nf
        <;>
        norm_num
        <;>
        linarith
  
  exact h_main