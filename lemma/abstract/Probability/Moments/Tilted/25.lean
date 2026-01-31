import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω] {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- If `X` is a.s. zero, then `mgf X μ t = 1` for all `t`. -/
lemma mgf_ae_zero [IsProbabilityMeasure μ] (hX0 : X =ᵐ[μ] 0) :
    mgf X μ t = 1 := by
  -- Unfold the definition of `mgf`
  unfold mgf
  -- Show that the integrand is a.e. equal to the constant function 1
  have hX0' :
      (fun ω => Real.exp (t * X ω)) =ᵐ[μ] fun _ => (1 : ℝ) := by
    refine hX0.mono ?_
    intro ω h
    simp [h]
  -- Replace the integrand by the constant 1 using `integral_congr_ae`
  have hInt :
      ∫ ω, Real.exp (t * X ω) ∂μ
        = ∫ _, (1 : ℝ) ∂μ :=
    integral_congr_ae hX0'
  -- Compute the integral of the constant function 1
  have hμ : μ.real univ = 1 := by
    -- From the probability measure assumption: μ univ = 1
    have h := (IsProbabilityMeasure.measure_univ (μ := μ))
    -- Take real parts via `toReal`
    have h' : (μ univ).toReal = (1 : ℝ≥0∞).toReal :=
      congrArg ENNReal.toReal h
    simpa [Measure.real, ENNReal.toReal_one] using h'
  have hInt1 : ∫ _, (1 : ℝ) ∂μ = 1 := by
    have htmp : ∫ _, (1 : ℝ) ∂μ = (1 : ℝ) * μ.real univ := by
      simpa using (integral_const (1 : ℝ))
    simpa [htmp, hμ]
  -- Put everything together
  simpa [hInt, hInt1]