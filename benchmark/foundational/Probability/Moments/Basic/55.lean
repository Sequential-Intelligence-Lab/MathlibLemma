import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory

lemma mgf_le_of_le
    {Ω : Type*} {m : MeasurableSpace Ω}
    (μ : Measure Ω)
    {X Y : Ω → ℝ} {t : ℝ}
    (hXY : X ≤ᵐ[μ] Y)
    (ht : 0 ≤ t)
    (h_int_X : Integrable (fun ω ↦ Real.exp (t * X ω)) μ)
    (h_int_Y : Integrable (fun ω ↦ Real.exp (t * Y ω)) μ) :
    ProbabilityTheory.mgf X μ t ≤ ProbabilityTheory.mgf Y μ t := by
  sorry