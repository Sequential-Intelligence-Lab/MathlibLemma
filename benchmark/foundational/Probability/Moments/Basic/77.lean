import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open scoped BigOperators
open MeasureTheory ProbabilityTheory

lemma iIndepFun.cgf_sum'
    {Ω ι : Type*} [MeasurableSpace Ω] (μ : Measure Ω)
    {X : ι → Ω → ℝ}
    (h_indep : ProbabilityTheory.iIndepFun X μ)
    (h_meas : ∀ i, Measurable (X i))
    {s : Finset ι} (t : ℝ)
    (h_int : ∀ i ∈ s, Integrable (fun ω ↦ Real.exp (t * X i ω)) μ) :
    ProbabilityTheory.cgf (fun ω ↦ ∑ i ∈ s, X i ω) μ t =
      ∑ i ∈ s, ProbabilityTheory.cgf (X i) μ t := by
  sorry