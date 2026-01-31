import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Int.gcd_eq_one_of_isCoprime {a b : ℤ} (h : IsCoprime a b) :
    Int.gcd a b = 1 := by
  have h_bezout : ∃ x y : ℤ, x * a + y * b = 1 := by
    obtain ⟨x, y, hxy⟩ := h
    refine' ⟨x, y, _⟩
    -- The definition of IsCoprime gives us x and y such that x * a + y * b = 1.
    -- We directly use this fact here.
    linarith
  
  have h_gcd_dvd : (Int.gcd a b : ℤ) ∣ 1 := by
    obtain ⟨x, y, hxy⟩ := h_bezout
    have h₁ : (Int.gcd a b : ℤ) ∣ a := by
      -- The gcd of a and b divides a.
      exact Int.gcd_dvd_left a b
    have h₂ : (Int.gcd a b : ℤ) ∣ b := by
      -- The gcd of a and b divides b.
      exact Int.gcd_dvd_right a b
    have h₃ : (Int.gcd a b : ℤ) ∣ x * a := by
      -- Since the gcd divides a, it divides any multiple of a.
      exact dvd_mul_of_dvd_right h₁ x
    have h₄ : (Int.gcd a b : ℤ) ∣ y * b := by
      -- Since the gcd divides b, it divides any multiple of b.
      exact dvd_mul_of_dvd_right h₂ y
    have h₅ : (Int.gcd a b : ℤ) ∣ x * a + y * b := by
      -- The gcd divides the sum of x * a and y * b.
      exact dvd_add h₃ h₄
    -- Since x * a + y * b = 1, the gcd divides 1.
    have h₆ : (Int.gcd a b : ℤ) ∣ 1 := by
      simpa [hxy] using h₅
    exact h₆
  
  have h_gcd_pos : (Int.gcd a b : ℕ) > 0 := by
    have h₁ : (Int.gcd a b : ℕ) > 0 := by
      -- The gcd of a and b as a natural number is positive because it is at least 1.
      have h₂ : (Int.gcd a b : ℕ) ≠ 0 := by
        -- The gcd cannot be zero because it divides 1.
        intro h₃
        have h₄ : (Int.gcd a b : ℤ) = 0 := by
          norm_cast at h₃ ⊢
          <;> simp_all
        have h₅ : (Int.gcd a b : ℤ) ∣ 1 := h_gcd_dvd
        rw [h₄] at h₅
        norm_num at h₅
        <;> simp_all [Int.emod_eq_of_lt]
      -- Since the gcd is not zero, it must be positive.
      have h₃ : (Int.gcd a b : ℕ) > 0 := by
        by_contra h₄
        -- If the gcd were zero, it would contradict the fact that it is not zero.
        have h₅ : (Int.gcd a b : ℕ) = 0 := by
          omega
        contradiction
      exact h₃
    exact h₁
  
  have h_gcd_one : (Int.gcd a b : ℕ) = 1 := by
    have h₁ : (Int.gcd a b : ℤ) ∣ 1 := h_gcd_dvd
    have h₂ : (Int.gcd a b : ℕ) > 0 := h_gcd_pos
    -- Use the fact that the gcd divides 1 and is positive to conclude it must be 1.
    have h₃ : (Int.gcd a b : ℕ) = 1 := by
      -- Since the gcd divides 1, it must be 1 or -1. But as a natural number, it's positive, so it's 1.
      have h₄ : (Int.gcd a b : ℕ) ∣ 1 := by
        -- Cast the divisibility to natural numbers.
        norm_cast at h₁ ⊢
        <;>
        (try omega) <;>
        (try simp_all [Int.coe_nat_dvd_left]) <;>
        (try exact_mod_cast h₁) <;>
        (try omega)
        <;>
        (try {
          -- Use the fact that if an integer divides another, their natural number versions also divide.
          simpa [Int.natAbs_dvd_natAbs] using h₁
        })
        <;>
        (try {
          -- Use the fact that the gcd is positive to simplify the divisibility condition.
          exact_mod_cast h₁
        })
      -- Since the gcd is a positive divisor of 1, it must be 1.
      have h₅ : (Int.gcd a b : ℕ) = 1 := by
        have h₆ : (Int.gcd a b : ℕ) ∣ 1 := h₄
        have h₇ : (Int.gcd a b : ℕ) ≤ 1 := Nat.le_of_dvd (by norm_num) h₆
        have h₈ : (Int.gcd a b : ℕ) > 0 := h_gcd_pos
        omega
      exact h₅
    exact h₃
  
  have h_main : Int.gcd a b = 1 := by
    norm_cast at h_gcd_one ⊢
    <;>
    (try omega) <;>
    (try simp_all) <;>
    (try nlinarith) <;>
    (try ring_nf at *) <;>
    (try norm_num at *) <;>
    (try linarith)
    <;>
    (try omega)
    <;>
    (try aesop)
  
  apply h_main