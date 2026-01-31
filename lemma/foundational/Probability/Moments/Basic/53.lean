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
  -- Unfold the definition of mgf
  simp [ProbabilityTheory.mgf] at h_int_s h_int_t ⊢
  -- We want to apply `integral_mono_ae`
  have h_ae :
      (fun ω ↦ Real.exp (s * X ω)) ≤ᵐ[μ] (fun ω ↦ Real.exp (t * X ω)) := by
    -- Use the assumption `0 ≤ᵐ[μ] X`
    refine hX.mono ?_
    intro ω hω
    have hmul : s * X ω ≤ t * X ω := by
      -- multiply the inequality `s ≤ t` by `X ω ≥ 0`
      exact mul_le_mul_of_nonneg_right hst hω
    -- apply monotonicity of `Real.exp`
    exact Real.exp_le_exp.mpr hmul
  -- now use the standard integral comparison lemma
  exact MeasureTheory.integral_mono_ae h_int_s h_int_t h_ae