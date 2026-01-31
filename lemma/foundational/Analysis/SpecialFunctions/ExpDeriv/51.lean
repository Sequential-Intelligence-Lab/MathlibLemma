import Mathlib
import Aesop
open BigOperators Real Nat Topology Rat

theorem Complex.exp_injective_on_strip' :
    Set.InjOn Complex.exp {z : ℂ | z.im ∈ Set.Ioc (-Real.pi) Real.pi} := by
  have h_main : ∀ (z w : ℂ), z ∈ {z : ℂ | z.im ∈ Set.Ioc (-Real.pi) Real.pi} →
  w ∈ {z : ℂ | z.im ∈ Set.Ioc (-Real.pi) Real.pi} →
  Complex.exp z = Complex.exp w → z = w := by
    intro z w hz hw hexp
    have h₁ : z.im ∈ Set.Ioc (-Real.pi) Real.pi := hz
    have h₂ : w.im ∈ Set.Ioc (-Real.pi) Real.pi := hw
    have h₃ : Complex.exp z = Complex.exp w := hexp
    have h₄ : Complex.exp (z - w) = 1 := by
      calc
        Complex.exp (z - w) = Complex.exp z / Complex.exp w := by
          rw [Complex.exp_sub]
        _ = 1 := by
          rw [h₃]
          field_simp [Complex.exp_ne_zero]
    -- Use the fact that exp(z - w) = 1 to deduce z - w = 2πi * k for some integer k
    have h₅ : ∃ (k : ℤ), z - w = (2 * Real.pi * Complex.I) * k := by
      -- Use the property of the complex exponential function
      have h₅₁ : Complex.exp (z - w) = 1 := h₄
      have h₅₂ : ∃ (k : ℤ), z - w = (2 * Real.pi * Complex.I) * k := by
        -- Use the fact that exp(z) = 1 implies z is an integer multiple of 2πi
        rw [Complex.exp_eq_one_iff] at h₅₁
        obtain ⟨k, hk⟩ := h₅₁
        refine' ⟨k, _⟩
        simp [Complex.ext_iff, mul_assoc] at hk ⊢
        try ring_nf at hk ⊢
        try simp_all [Complex.ext_iff, mul_assoc]
      exact h₅₂
    obtain ⟨k, hk⟩ := h₅
    -- Take the imaginary part of both sides to get Im(z) - Im(w) = 2πk
    have h₆ : z.im - w.im = 2 * Real.pi * k := by
      have h₆₁ := hk
      simp [Complex.ext_iff, mul_assoc] at h₆₁ ⊢
      try ring_nf at h₆₁ ⊢
      try linarith
    -- Derive bounds on Im(z) - Im(w)
    have h₇ : (z.im : ℝ) - w.im < 2 * Real.pi := by
      have h₇₁ : (z.im : ℝ) ≤ Real.pi := by exact_mod_cast h₁.2
      have h₇₂ : (w.im : ℝ) > -Real.pi := by exact_mod_cast h₂.1
      linarith [Real.pi_pos]
    have h₈ : (z.im : ℝ) - w.im > -2 * Real.pi := by
      have h₈₁ : (z.im : ℝ) > -Real.pi := by exact_mod_cast h₁.1
      have h₈₂ : (w.im : ℝ) ≤ Real.pi := by exact_mod_cast h₂.2
      linarith [Real.pi_pos]
    -- Deduce that k must be zero
    have h₉ : (k : ℝ) = 0 := by
      have h₉₁ : (z.im : ℝ) - w.im = 2 * Real.pi * k := by exact_mod_cast h₆
      have h₉₂ : (z.im : ℝ) - w.im < 2 * Real.pi := h₇
      have h₉₃ : (z.im : ℝ) - w.im > -2 * Real.pi := h₈
      have h₉₄ : (2 : ℝ) * Real.pi * k < 2 * Real.pi := by linarith
      have h₉₅ : (2 : ℝ) * Real.pi * k > -2 * Real.pi := by linarith
      have h₉₆ : (k : ℝ) < 1 := by
        by_contra h
        have h₉₇ : (k : ℝ) ≥ 1 := by linarith
        have h₉₈ : (2 : ℝ) * Real.pi * k ≥ 2 * Real.pi := by
          have h₉₉ : (k : ℝ) ≥ 1 := h₉₇
          have h₉₁₀ : (2 : ℝ) * Real.pi * k ≥ 2 * Real.pi * 1 := by
            nlinarith [Real.pi_pos]
          linarith
        linarith
      have h₉₇ : (k : ℝ) > -1 := by
        by_contra h
        have h₉₈ : (k : ℝ) ≤ -1 := by linarith
        have h₉₉ : (2 : ℝ) * Real.pi * k ≤ -2 * Real.pi := by
          have h₉₁₀ : (k : ℝ) ≤ -1 := h₉₈
          have h₉₁₁ : (2 : ℝ) * Real.pi * k ≤ 2 * Real.pi * (-1 : ℝ) := by
            nlinarith [Real.pi_pos]
          linarith
        linarith
      have h₉₈ : (k : ℤ) = 0 := by
        have h₉₉ : (k : ℝ) < 1 := h₉₆
        have h₉₁₀ : (k : ℝ) > -1 := h₉₇
        have h₉₁₁ : (k : ℤ) < 1 := by
          by_contra h
          have h₉₁₂ : (k : ℤ) ≥ 1 := by linarith
          have h₉₁₃ : (k : ℝ) ≥ 1 := by exact_mod_cast h₉₁₂
          linarith
        have h₉₁₂ : (k : ℤ) > -1 := by
          by_contra h
          have h₉₁₃ : (k : ℤ) ≤ -1 := by linarith
          have h₉₁₄ : (k : ℝ) ≤ -1 := by exact_mod_cast h₉₁₃
          linarith
        have h₉₁₃ : (k : ℤ) = 0 := by
          omega
        exact h₉₁₃
      have h₉₉ : (k : ℝ) = 0 := by exact_mod_cast h₉₈
      exact h₉₉
    -- Conclude that z = w
    have h₁₀ : z = w := by
      have h₁₀₁ : (k : ℝ) = 0 := h₉
      have h₁₀₂ : (k : ℤ) = 0 := by exact_mod_cast h₁₀₁
      have h₁₀₃ : z - w = 0 := by
        calc
          z - w = (2 * Real.pi * Complex.I) * k := hk
          _ = (2 * Real.pi * Complex.I) * (k : ℂ) := by simp
          _ = 0 := by
            simp [h₁₀₂]
      have h₁₀₄ : z = w := by
        rw [sub_eq_zero] at h₁₀₃
        exact h₁₀₃
      exact h₁₀₄
    exact h₁₀

  have h_final : Set.InjOn Complex.exp {z : ℂ | z.im ∈ Set.Ioc (-Real.pi) Real.pi} := by
    intro z hz w hw h
    have h₁ : z = w := h_main z w hz hw h
    exact h₁

  exact h_final
