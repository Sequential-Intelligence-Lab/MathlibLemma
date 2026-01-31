import Mathlib

open MeasureTheory
open ProbabilityTheory
open scoped BigOperators

lemma variance_sum_indep'
    {Ω : Type*} {mΩ : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ]
    {ι : Type*} {s : Finset ι}
    {X : ι → Ω → ℝ}
    (hX : ∀ i ∈ s, MeasureTheory.MemLp (X i) 2 μ)
    (hind : Set.Pairwise (↑s) fun i j => X i ⟂ᵢ[μ] X j) :
    ProbabilityTheory.variance (fun ω => ∑ i ∈ s, X i ω) μ =
      ∑ i ∈ s, ProbabilityTheory.variance (X i) μ := by
  sorry