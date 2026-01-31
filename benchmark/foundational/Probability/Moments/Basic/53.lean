import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma mgf_mono_t_nonneg
    {Ω : Type*} [m : MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω) {X : Ω → ℝ}
    {s t : ℝ} (hst : s ≤ t) (hX : 0 ≤ᵐ[μ] X)
    (hs : 0 ≤ s) (ht : 0 ≤ t)
    (h_int_s : MeasureTheory.Integrable (fun ω ↦ Real.exp (s * X ω)) μ)
    (h_int_t : MeasureTheory.Integrable (fun ω ↦ Real.exp (t * X ω)) μ) :
    ProbabilityTheory.mgf X μ s ≤ ProbabilityTheory.mgf X μ t := by
  sorry