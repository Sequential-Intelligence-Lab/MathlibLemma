import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma iIndepFun.mgf_sum_identDistrib'
    {Ω ι : Type*} {m : MeasurableSpace Ω}
    (μ : MeasureTheory.Measure Ω)
    [MeasureTheory.IsProbabilityMeasure μ]
    {X : ι → Ω → ℝ} {s : Finset ι} {j : ι} (t : ℝ)
    (h_meas : ∀ i, Measurable (X i))
    (h_indep : ProbabilityTheory.iIndepFun X μ)
    (hident :
      ∀ i ∈ s, ∀ j ∈ s,
        ProbabilityTheory.IdentDistrib (X i) (X j) μ μ)
    (hj : j ∈ s) :
    ProbabilityTheory.mgf (∑ i ∈ s, X i) μ t =
      ProbabilityTheory.mgf (X j) μ t ^ s.card := by
  sorry

/-! ### Brainstormed lemmas: Chernoff and tail bounds -/