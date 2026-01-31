import Mathlib

open ProbabilityTheory
open MeasureTheory

lemma variance_sum_indep
    {Ω : Type*} [mΩ : MeasurableSpace Ω] {μ : Measure Ω}
    [IsFiniteMeasure μ] {ι : Type*} [Fintype ι]
    {X : ι → Ω → ℝ}
    (hX : ∀ i, MemLp (X i) 2 μ)
    (hind : Set.Pairwise (Set.univ : Set ι) fun i j => X i ⟂ᵢ[μ] X j) :
    variance (fun ω => ∑ i, X i ω) μ =
      ∑ i, variance (X i) μ := by
  sorry