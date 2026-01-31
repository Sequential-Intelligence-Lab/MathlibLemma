import Mathlib

open MeasureTheory

/-- Two probability measures equal on a π-system that generates the Borel σ-algebra on `ℝ`
are equal. -/
lemma ProbabilityMeasure.eq_of_real_piSystem
    (μ ν : ProbabilityMeasure ℝ)
    (P : Set (Set ℝ)) (hP : IsPiSystem P)
    (hgen : borel ℝ = .generateFrom P)
    (h : ∀ s ∈ P, (μ : Measure ℝ) s = (ν : Measure ℝ) s) :
    μ = ν := by
  sorry