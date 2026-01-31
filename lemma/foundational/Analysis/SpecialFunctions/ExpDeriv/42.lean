import Mathlib

theorem Complex.differentiableAt_exp_comp_real (x : ℝ) :
    DifferentiableAt ℝ (fun t : ℝ => Complex.exp (t : ℂ)) x := by
  -- Step 1: differentiability of the real exponential
  have h₁ : DifferentiableAt ℝ (fun t : ℝ => Real.exp t) x :=
    Real.differentiableAt_exp

  -- Step 2: differentiability of the coercion ℝ → ℂ and chain rule
  have h₂ :
      DifferentiableAt ℝ (fun t : ℝ => ((Real.exp t : ℝ) : ℂ)) x :=
    (Complex.ofRealCLM.differentiableAt.comp x h₁)

  -- Step 3: identify the function with Complex.exp (t : ℂ)
  have hEq :
      (fun t : ℝ => Complex.exp (t : ℂ)) =
      (fun t : ℝ => ((Real.exp t : ℝ) : ℂ)) := by
    funext t
    -- `Complex.ofReal_exp` states: ((Real.exp t : ℝ) : ℂ) = Complex.exp t
    simpa [Complex.ofReal_exp] using (Complex.ofReal_exp t).symm

  -- Step 4: rewrite using the equality of functions
  simpa [hEq] using h₂