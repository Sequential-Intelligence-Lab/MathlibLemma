import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory ProbabilityTheory

universe u

lemma cgf_zero_of_mgf_one
    {Ω : Type u} {m : MeasurableSpace Ω}
    (μ : Measure Ω) {X : Ω → ℝ} {t : ℝ}
    (h : ProbabilityTheory.mgf X μ t = 1) :
    ProbabilityTheory.cgf X μ t = 0 := by
  -- `cgf` is defined as `Real.log (mgf X μ t)`, so this is immediate from `h`.
  simpa [ProbabilityTheory.cgf, h]