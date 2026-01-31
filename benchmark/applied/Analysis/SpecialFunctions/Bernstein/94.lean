import Mathlib

-- 95. A lemma about convergence rate for C^2 functions using variance identity
lemma bernsteinApproximation_rate_C2
    (f : ℝ → ℝ) (hf : ContDiff ℝ 2 f)
    (hbound : ∀ x ∈ Set.Icc (0 : ℝ) 1, |deriv^[2] f x| ≤ 1) :
    ∃ C > 0, ∀ n ≥ (1 : ℕ),
      ‖bernsteinApproximation n
           (⟨fun x : Set.Icc (0 : ℝ) 1 => f x,
             (hf.continuous.comp continuous_subtype_val)⟩)
         - ⟨fun x : Set.Icc (0 : ℝ) 1 => f x,
             (hf.continuous.comp continuous_subtype_val)⟩‖ ≤ C / n := by
  sorry