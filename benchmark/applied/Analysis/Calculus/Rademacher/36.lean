import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

/-- 37. Line derivative exists and equals zero a.e. for constant function -/
lemma ae_lineDeriv_const
    {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [MeasurableSpace E] [BorelSpace E]
    (μ : MeasureTheory.Measure E)
    (c : ℝ) :
    ∀ᵐ x ∂μ, lineDeriv ℝ (fun _ : E => c) x = fun _ => 0 := by
  sorry