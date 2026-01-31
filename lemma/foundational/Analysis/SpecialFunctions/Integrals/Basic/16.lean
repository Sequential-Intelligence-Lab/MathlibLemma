import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_const_mul_log (a b c : ℝ) (ha : a > 0) (hb : b > 0) :
    ∫ x in a..b, c * Real.log x = c * (b * Real.log b - a * Real.log a - (b - a)) := by
  have h_main : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
    have h₁ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
      have h₂ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
        -- Use the fundamental theorem of calculus to evaluate the integral of log x
        have h₃ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
          -- Use the antiderivative x * log x - x to compute the integral
          have h₄ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
            -- Prove that the derivative of x * log x - x is log x
            have h₅ : ∀ (x : ℝ), x > 0 → HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log x) x := by
              intro x hx
              have h₆ : HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log x + 1 - 1) x := by
                -- Differentiate x * log x - x
                have h₇ : HasDerivAt (fun x : ℝ => x * Real.log x) (Real.log x + 1) x := by
                  -- Differentiate x * log x using product rule
                  have h₈ : HasDerivAt (fun x : ℝ => x : ℝ → ℝ) 1 x := by
                    simpa using (hasDerivAt_id x)
                  have h₉ : HasDerivAt (fun x : ℝ => Real.log x) (1 / x) x := by
                    simpa using (Real.hasDerivAt_log (by positivity))
                  have h₁₀ : HasDerivAt (fun x : ℝ => x * Real.log x) (1 * Real.log x + x * (1 / x)) x := by
                    apply HasDerivAt.mul h₈ h₉
                  convert h₁₀ using 1 <;> field_simp [hx.ne'] <;> ring <;> field_simp [hx.ne'] <;> ring
                have h₁₁ : HasDerivAt (fun x : ℝ => (x : ℝ)) 1 x := by
                  simpa using (hasDerivAt_id x)
                have h₁₂ : HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log x + 1 - 1) x := by
                  convert h₇.sub h₁₁ using 1 <;> ring
                exact h₁₂
              convert h₆ using 1 <;> ring
            -- Use the fundamental theorem of calculus to evaluate the integral
            have h₆ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
              have h₇ : a ≤ b ∨ b ≤ a := by
                by_cases h : a ≤ b
                · exact Or.inl h
                · exact Or.inr (by linarith)
              cases h₇ with
              | inl h₇ =>
                -- Case: a ≤ b
                have h₈ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                  have h₉ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                    -- Use the antiderivative x * log x - x to compute the integral
                    have h₁₀ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                      -- Use the fundamental theorem of calculus
                      have h₁₁ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                        -- Prove that the derivative of x * log x - x is log x
                        have h₁₂ : ∀ x ∈ Set.Icc a b, HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log x) x := by
                          intro x hx
                          have h₁₃ : x > 0 := by
                            have h₁₄ : a > 0 := ha
                            have h₁₅ : b > 0 := hb
                            have h₁₆ : a ≤ x := hx.1
                            have h₁₇ : x ≤ b := hx.2
                            linarith
                          exact h₅ x h₁₃
                        -- Use the fundamental theorem of calculus
                        have h₁₃ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                          have h₁₄ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                            -- Use the antiderivative x * log x - x to compute the integral
                            have h₁₅ : ∫ x in a..b, Real.log x = ( (b * Real.log b - b) - (a * Real.log a - a) ) := by
                              -- Use the fundamental theorem of calculus
                              have h₁₆ : ∫ x in a..b, Real.log x = ( (b * Real.log b - b) - (a * Real.log a - a) ) := by
                                -- Use the antiderivative x * log x - x to compute the integral
                                have h₁₇ : ∫ x in a..b, Real.log x = ( (b * Real.log b - b) - (a * Real.log a - a) ) := by
                                  -- Use the fundamental theorem of calculus
                                  have h₁₈ : ∫ x in a..b, Real.log x = ( (b * Real.log b - b) - (a * Real.log a - a) ) := by
                                    -- Use the antiderivative x * log x - x to compute the integral
                                    have h₁₉ : HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log b) b := by
                                      have h₂₀ : b > 0 := hb
                                      exact h₅ b h₂₀
                                    have h₂₁ : HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log a) a := by
                                      have h₂₂ : a > 0 := ha
                                      exact h₅ a h₂₂
                                    -- Use the fundamental theorem of calculus
                                    have h₂₃ : ∫ x in a..b, Real.log x = ( (b * Real.log b - b) - (a * Real.log a - a) ) := by
                                      -- Use the antiderivative x * log x - x to compute the integral
                                      have h₂₄ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                                        -- Use the fundamental theorem of calculus
                                        have h₂₅ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                                          -- Use the antiderivative x * log x - x to compute the integral
                                          simp [intervalIntegral.integral_comp_sub_left (fun x => Real.log x)]
                                          <;>
                                          (try norm_num) <;>
                                          (try ring_nf) <;>
                                          (try norm_num) <;>
                                          (try
                                            {
                                              have h₂₆ : a > 0 := ha
                                              have h₂₇ : b > 0 := hb
                                              have h₂₈ : Real.log a = Real.log a := rfl
                                              have h₂₉ : Real.log b = Real.log b := rfl
                                              simp_all [Real.log_mul, Real.log_rpow, Real.log_pow]
                                              <;>
                                              (try norm_num) <;>
                                              (try ring_nf) <;>
                                              (try norm_num)
                                              <;>
                                              (try linarith)
                                            }) <;>
                                          (try
                                            {
                                              -- Use the fundamental theorem of calculus
                                              have h₂₆ : a > 0 := ha
                                              have h₂₇ : b > 0 := hb
                                              have h₂₈ : Real.log a = Real.log a := rfl
                                              have h₂₉ : Real.log b = Real.log b := rfl
                                              simp_all [Real.log_mul, Real.log_rpow, Real.log_pow]
                                              <;>
                                              (try norm_num) <;>
                                              (try ring_nf) <;>
                                              (try norm_num)
                                              <;>
                                              (try linarith)
                                            })
                                        exact h₂₅
                                      exact h₂₄
                                    exact h₂₃
                                  exact h₁₈
                                exact h₁₇
                              exact h₁₆
                            exact h₁₅
                          exact h₁₄
                        exact h₁₃
                      exact h₁₁
                    exact h₁₀
                  exact h₉
                exact h₈
              | inr h₇ =>
                -- Case: b ≤ a
                have h₈ : ∫ x in a..b, Real.log x = (b * Real.log b - b) - (a * Real.log a - a) := by
                  have h₉ : ∫ x in a..b, Real.log x = -∫ x in b..a, Real.log x := by
                    rw [intervalIntegral.integral_symm]
                  rw [h₉]
                  have h₁₀ : ∫ x in b..a, Real.log x = (a * Real.log a - a) - (b * Real.log b - b) := by
                    have h₁₁ : ∫ x in b..a, Real.log x = (a * Real.log a - a) - (b * Real.log b - b) := by
                      -- Use the antiderivative x * log x - x to compute the integral
                      have h₁₂ : ∫ x in b..a, Real.log x = (a * Real.log a - a) - (b * Real.log b - b) := by
                        -- Use the fundamental theorem of calculus
                        have h₁₃ : ∫ x in b..a, Real.log x = (a * Real.log a - a) - (b * Real.log b - b) := by
                          -- Prove that the derivative of x * log x - x is log x
                          have h₁₄ : ∀ x ∈ Set.Icc b a, HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log x) x := by
                            intro x hx
                            have h₁₅ : x > 0 := by
                              have h₁₆ : b > 0 := hb
                              have h₁₇ : a > 0 := ha
                              have h₁₈ : b ≤ x := hx.1
                              have h₁₉ : x ≤ a := hx.2
                              linarith
                            exact h₅ x h₁₅
                          -- Use the fundamental theorem of calculus
                          have h₁₅ : ∫ x in b..a, Real.log x = (a * Real.log a - a) - (b * Real.log b - b) := by
                            have h₁₆ : ∫ x in b..a, Real.log x = (a * Real.log a - a) - (b * Real.log b - b) := by
                              -- Use the antiderivative x * log x - x to compute the integral
                              have h₁₇ : ∫ x in b..a, Real.log x = ( (a * Real.log a - a) - (b * Real.log b - b) ) := by
                                -- Use the fundamental theorem of calculus
                                have h₁₈ : ∫ x in b..a, Real.log x = ( (a * Real.log a - a) - (b * Real.log b - b) ) := by
                                  -- Use the antiderivative x * log x - x to compute the integral
                                  have h₁₉ : ∫ x in b..a, Real.log x = ( (a * Real.log a - a) - (b * Real.log b - b) ) := by
                                    -- Use the fundamental theorem of calculus
                                    have h₂₀ : ∫ x in b..a, Real.log x = ( (a * Real.log a - a) - (b * Real.log b - b) ) := by
                                      -- Use the antiderivative x * log x - x to compute the integral
                                      have h₂₁ : HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log a) a := by
                                        have h₂₂ : a > 0 := ha
                                        exact h₅ a h₂₂
                                      have h₂₃ : HasDerivAt (fun x : ℝ => x * Real.log x - x) (Real.log b) b := by
                                        have h₂₄ : b > 0 := hb
                                        exact h₅ b h₂₄
                                      -- Use the fundamental theorem of calculus
                                      have h₂₅ : ∫ x in b..a, Real.log x = ( (a * Real.log a - a) - (b * Real.log b - b) ) := by
                                        -- Use the antiderivative x * log x - x to compute the integral
                                        have h₂₆ : ∫ x in b..a, Real.log x = (a * Real.log a - a) - (b * Real.log b - b) := by
                                          -- Use the fundamental theorem of calculus
                                          have h₂₇ : ∫ x in b..a, Real.log x = (a * Real.log a - a) - (b * Real.log b - b) := by
                                            -- Use the antiderivative x * log x - x to compute the integral
                                            simp [intervalIntegral.integral_comp_sub_left (fun x => Real.log x)]
                                            <;>
                                            (try norm_num) <;>
                                            (try ring_nf) <;>
                                            (try norm_num) <;>
                                            (try
                                              {
                                                have h₂₈ : a > 0 := ha
                                                have h₂₉ : b > 0 := hb
                                                have h₃₀ : Real.log a = Real.log a := rfl
                                                have h₃₁ : Real.log b = Real.log b := rfl
                                                simp_all [Real.log_mul, Real.log_rpow, Real.log_pow]
                                                <;>
                                                (try norm_num) <;>
                                                (try ring_nf) <;>
                                                (try norm_num)
                                                <;>
                                                (try linarith)
                                              }) <;>
                                            (try
                                              {
                                                -- Use the fundamental theorem of calculus
                                                have h₂₈ : a > 0 := ha
                                                have h₂₉ : b > 0 := hb
                                                have h₃₀ : Real.log a = Real.log a := rfl
                                                have h₃₁ : Real.log b = Real.log b := rfl
                                                simp_all [Real.log_mul, Real.log_rpow, Real.log_pow]
                                                <;>
                                                (try norm_num) <;>
                                                (try ring_nf) <;>
                                                (try norm_num)
                                                <;>
                                                (try linarith)
                                              })
                                          exact h₂₇
                                        exact h₂₆
                                      exact h₂₅
                                    exact h₂₀
                                  exact h₁₉
                                exact h₁₈
                              exact h₁₇
                            exact h₁₆
                          exact h₁₅
                        exact h₁₃
                      exact h₁₂
                    exact h₁₁
                  rw [h₁₀]
                  <;> ring_nf
                  <;>
                  (try norm_num) <;>
                  (try linarith)
                exact h₈
            exact h₆
          exact h₄
        exact h₃
      exact h₂
    exact h₁
  
  have h_factor_out_c : ∫ x in a..b, c * Real.log x = c * ∫ x in a..b, Real.log x := by
    have h₁ : ∫ x in a..b, c * Real.log x = c * ∫ x in a..b, Real.log x := by
      -- Use the property of integrals to factor out the constant c
      calc
        ∫ x in a..b, c * Real.log x = ∫ x in a..b, c * Real.log x := by rfl
        _ = c * ∫ x in a..b, Real.log x := by
          -- Factor out the constant c from the integral
          have h₂ : ∫ x in a..b, c * Real.log x = c * ∫ x in a..b, Real.log x := by
            -- Use the linearity of the integral to factor out c
            simp [intervalIntegral.integral_comp_mul_left (fun x => Real.log x)]
            <;>
            ring_nf
            <;>
            simp_all [mul_comm]
            <;>
            linarith
          -- The result follows directly from the linearity of the integral
          exact h₂
    -- The final result is already derived in h₁
    exact h₁
  
  have h_final : ∫ x in a..b, c * Real.log x = c * (b * Real.log b - a * Real.log a - (b - a)) := by
    calc
      ∫ x in a..b, c * Real.log x = c * ∫ x in a..b, Real.log x := by rw [h_factor_out_c]
      _ = c * ((b * Real.log b - b) - (a * Real.log a - a)) := by rw [h_main]
      _ = c * (b * Real.log b - a * Real.log a - (b - a)) := by
        ring_nf
        <;>
        simp_all [mul_comm]
        <;>
        linarith
  
  exact h_final