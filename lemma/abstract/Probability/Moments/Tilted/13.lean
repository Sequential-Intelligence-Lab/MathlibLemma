import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ ν : MeasureTheory.Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/
/-- The mgf of `-X` under `μ` is related to the mgf of `X` by `mgf (-X) μ t = mgf X μ (-t)`. -/
lemma mgf_neg (t : ℝ) :
    ProbabilityTheory.mgf (fun ω ↦ -X ω) μ t =
      ProbabilityTheory.mgf X μ (-t) := by
  -- unfold definitions of mgf on both sides
  unfold ProbabilityTheory.mgf
  -- split on integrability of the left integrand
  by_cases h :
      Integrable (fun ω ↦ Real.exp (t * ((fun ω ↦ -X ω) ω))) μ
  · -- integrable case
    -- show integrability on the right via equality of integrands
    have h' :
        Integrable (fun ω ↦ Real.exp ((-t) * X ω)) μ := by
      -- the integrands are pointwise equal
      simpa [mul_comm, mul_left_comm, mul_assoc] using h
    -- now both mgfs are given by integrals of equal functions
    simp [h, h', mul_comm, mul_left_comm, mul_assoc]
  · -- non-integrable case
    -- show non-integrability on the right
    have h' :
        ¬ Integrable (fun ω ↦ Real.exp ((-t) * X ω)) μ := by
      intro h'
      apply h
      -- if the right integrand is integrable, so is the left, by equality
      simpa [mul_comm, mul_left_comm, mul_assoc] using h'
    simp [h, h', mul_comm, mul_left_comm, mul_assoc]