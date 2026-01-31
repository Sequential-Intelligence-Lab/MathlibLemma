import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma mgf_dirac_real
    {x : ℝ} {t : ℝ} :
    ProbabilityTheory.mgf (fun _ : ℝ ↦ x) (MeasureTheory.Measure.dirac 0) t =
      Real.exp (t * x) := by
  sorry