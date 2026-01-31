import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_arctan (a b : ℝ) :
    ∫ x in a..b, Real.arctan x = b * Real.arctan b - a * Real.arctan a -
      (1 / 2) * (Real.log (1 + b^2) - Real.log (1 + a^2)) := by
  have h_main : (∫ x in a..b, Real.arctan x) = (b * Real.arctan b - (1 / 2 : ℝ) * Real.log (1 + b ^ 2)) - (a * Real.arctan a - (1 / 2 : ℝ) * Real.log (1 + a ^ 2)) := by
    have h₁ : ∀ (x : ℝ), HasDerivAt (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) (Real.arctan x) x := by
      intro x
      have h₂ : HasDerivAt (fun x : ℝ => x * Real.arctan x) (Real.arctan x + x / (1 + x ^ 2)) x := by
        -- Differentiate x * arctan(x) using the product rule
        have h₃ : HasDerivAt (fun x : ℝ => x : ℝ → ℝ) 1 x := by simpa using (hasDerivAt_id x)
        have h₄ : HasDerivAt (fun x : ℝ => Real.arctan x) (1 / (1 + x ^ 2)) x := by
          simpa using (Real.hasDerivAt_arctan x)
        have h₅ : HasDerivAt (fun x : ℝ => x * Real.arctan x) (1 * Real.arctan x + x * (1 / (1 + x ^ 2))) x := by
          convert h₃.mul h₄ using 1 <;> ring
        convert h₅ using 1 <;> field_simp <;> ring
        <;> field_simp <;> ring
      have h₆ : HasDerivAt (fun x : ℝ => (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) (x / (1 + x ^ 2)) x := by
        -- Differentiate (1/2) * log(1 + x^2)
        have h₇ : HasDerivAt (fun x : ℝ => (1 + x ^ 2 : ℝ)) (2 * x) x := by
          simpa using (hasDerivAt_pow 2 x).const_add 1
        have h₈ : HasDerivAt (fun x : ℝ => Real.log (1 + x ^ 2)) (2 * x / (1 + x ^ 2)) x := by
          have h₉ : HasDerivAt (fun x : ℝ => (1 + x ^ 2 : ℝ)) (2 * x) x := h₇
          have h₁₀ : (1 + x ^ 2 : ℝ) ≠ 0 := by nlinarith
          convert HasDerivAt.log h₉ (by positivity) using 1 <;> field_simp [h₁₀] <;> ring
        have h₁₁ : HasDerivAt (fun x : ℝ => (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) ((1 / 2 : ℝ) * (2 * x / (1 + x ^ 2))) x := by
          convert HasDerivAt.const_mul (1 / 2 : ℝ) h₈ using 1 <;> ring
        convert h₁₁ using 1 <;> field_simp <;> ring
        <;> field_simp <;> ring
      -- Combine the derivatives
      have h₁₂ : HasDerivAt (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) (Real.arctan x + x / (1 + x ^ 2) - x / (1 + x ^ 2)) x := by
        convert h₂.sub h₆ using 1 <;> ring
      convert h₁₂ using 1 <;> ring
      <;> field_simp <;> ring
    -- Apply the fundamental theorem of calculus
    have h₂ : (∫ x in a..b, Real.arctan x) = (b * Real.arctan b - (1 / 2 : ℝ) * Real.log (1 + b ^ 2)) - (a * Real.arctan a - (1 / 2 : ℝ) * Real.log (1 + a ^ 2)) := by
      have h₃ : ∫ x in a..b, Real.arctan x = (b * Real.arctan b - (1 / 2 : ℝ) * Real.log (1 + b ^ 2)) - (a * Real.arctan a - (1 / 2 : ℝ) * Real.log (1 + a ^ 2)) := by
        -- Use the fundamental theorem of calculus
        have h₄ : ∫ x in a..b, Real.arctan x = ( (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) b - (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) a ) := by
          -- Apply the second fundamental theorem of calculus
          have h₅ : ∀ x : ℝ, HasDerivAt (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) (Real.arctan x) x := h₁
          have h₆ : ∫ x in a..b, Real.arctan x = ( (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) b - (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) a ) := by
            -- Use the fundamental theorem of calculus
            have h₇ : ∫ x in a..b, Real.arctan x = ∫ x in a..b, (Real.arctan x : ℝ) := by simp
            rw [h₇]
            have h₈ : ∫ x in a..b, (Real.arctan x : ℝ) = ( (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) b - (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) a ) := by
              -- Use the fundamental theorem of calculus
              have h₉ : ∫ x in a..b, (Real.arctan x : ℝ) = ( (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) b - (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) a ) := by
                -- Use the fundamental theorem of calculus
                have h₁₀ : ∀ x : ℝ, HasDerivAt (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) (Real.arctan x) x := h₁
                -- Use the fundamental theorem of calculus
                have h₁₁ : ∫ x in a..b, (Real.arctan x : ℝ) = ( (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) b - (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) a ) := by
                  -- Use the fundamental theorem of calculus
                  have h₁₂ : ∫ x in a..b, (Real.arctan x : ℝ) = ( (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) b - (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) a ) := by
                    -- Use the fundamental theorem of calculus
                    apply intervalIntegral.integral_eq_sub_of_hasDerivAt
                    · intro x hx
                      have h₁₃ : HasDerivAt (fun x : ℝ => x * Real.arctan x - (1 / 2 : ℝ) * Real.log (1 + x ^ 2)) (Real.arctan x) x := h₁ x
                      convert h₁₃ using 1 <;> simp [hx]
                    · -- Show that the function is continuous
                      apply Continuous.intervalIntegrable
                      have h₁₄ : Continuous (fun x : ℝ => Real.arctan x) := Real.continuous_arctan
                      exact h₁₄
                  exact h₁₂
                exact h₁₁
              exact h₉
            rw [h₈]
          exact h₆
        rw [h₄]
        <;> simp [sub_eq_add_neg]
        <;> ring_nf
        <;> norm_num
      exact h₃
    exact h₂
  
  have h_final : (∫ x in a..b, Real.arctan x) = b * Real.arctan b - a * Real.arctan a - (1 / 2) * (Real.log (1 + b ^ 2) - Real.log (1 + a ^ 2)) := by
    have h₁ : (∫ x in a..b, Real.arctan x) = (b * Real.arctan b - (1 / 2 : ℝ) * Real.log (1 + b ^ 2)) - (a * Real.arctan a - (1 / 2 : ℝ) * Real.log (1 + a ^ 2)) := h_main
    have h₂ : (b * Real.arctan b - (1 / 2 : ℝ) * Real.log (1 + b ^ 2)) - (a * Real.arctan a - (1 / 2 : ℝ) * Real.log (1 + a ^ 2)) = b * Real.arctan b - a * Real.arctan a - (1 / 2) * (Real.log (1 + b ^ 2) - Real.log (1 + a ^ 2)) := by
      ring_nf
      <;> field_simp
      <;> ring_nf
      <;> linarith
    linarith
  
  exact h_final