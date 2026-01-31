import Mathlib

open MeasureTheory

/-! ### Brainstormed lemmas about `moment` -/
lemma integrable_exp_mul_bounded
    {Ω : Type*} {m : MeasurableSpace Ω} (μ : Measure Ω)
    [IsFiniteMeasure μ]
    (X : Ω → ℝ) {a b t : ℝ}
    (hX : AEMeasurable X μ)
    (hb : ∀ᵐ ω ∂μ, X ω ∈ Set.Icc a b) :
    Integrable (fun ω ↦ Real.exp (t * X ω)) μ := by
  classical
  -- Define the bounding constant
  let C : ℝ := max (Real.exp (t * a)) (Real.exp (t * b))

  -- Basic properties of C
  have hEa : 0 ≤ Real.exp (t * a) := (Real.exp_pos _).le
  have hEb : 0 ≤ Real.exp (t * b) := (Real.exp_pos _).le
  have hC_nonneg : 0 ≤ C := le_trans hEa (le_max_left _ _)

  -- AE measurability / strong measurability of the function
  have h_mul : AEMeasurable (fun ω => t * X ω) μ := by
    simpa [mul_comm] using hX.mul_const t
  have h_ae_meas : AEMeasurable (fun ω => Real.exp (t * X ω)) μ :=
    Real.measurable_exp.comp_aemeasurable h_mul
  have h_strong : AEStronglyMeasurable (fun ω => Real.exp (t * X ω)) μ :=
    h_ae_meas.aestronglyMeasurable

  -- Pointwise bound on exp(t * x) when x ∈ [a, b]
  have h_pointwise :
      ∀ x ∈ Set.Icc a b, Real.exp (t * x) ≤ C := by
    intro x hx
    rcases hx with ⟨hax, hxb⟩
    by_cases htsign : 0 ≤ t
    · -- Case t ≥ 0
      have h1 : t * x ≤ t * b := by
        have := mul_le_mul_of_nonneg_left hxb htsign
        simpa [mul_comm] using this
      -- exp is monotone increasing
      have h_exp1 : Real.exp (t * x) ≤ Real.exp (t * b) :=
        Real.exp_le_exp.mpr h1
      exact le_trans h_exp1 (le_max_right _ _)
    · -- Case t < 0, i.e. t ≤ 0
      have htsign' : t ≤ 0 := le_of_lt (lt_of_not_ge htsign)
      have h1 : t * x ≤ t * a := by
        have := mul_le_mul_of_nonpos_left hax htsign'
        simpa [mul_comm] using this
      have h_exp1 : Real.exp (t * x) ≤ Real.exp (t * a) :=
        Real.exp_le_exp.mpr h1
      exact le_trans h_exp1 (le_max_left _ _)

  -- AE bound without norms
  have h_exp_leC :
      ∀ᵐ ω ∂μ, Real.exp (t * X ω) ≤ C := by
    refine hb.mono ?_
    intro ω hω
    exact h_pointwise (X ω) hω

  -- Turn the pointwise bound into an a.e. bound on norms
  have h_bound :
      ∀ᵐ ω ∂μ, ‖Real.exp (t * X ω)‖ ≤ C := by
    refine h_exp_leC.mono ?_
    intro ω hω
    -- exp is positive, relate norm to value
    have hpos : 0 ≤ Real.exp (t * X ω) := (Real.exp_pos _).le
    have hnorm : ‖Real.exp (t * X ω)‖ = Real.exp (t * X ω) := by
      simpa [Real.norm_eq_abs, abs_of_nonneg hpos]
    simpa [hnorm] using hω

  -- Constant function C is integrable (finite measure)
  have h_int_const : Integrable (fun _ : Ω => C) μ :=
    integrable_const C

  -- Apply domination lemma to conclude integrability
  exact h_int_const.mono' h_strong h_bound