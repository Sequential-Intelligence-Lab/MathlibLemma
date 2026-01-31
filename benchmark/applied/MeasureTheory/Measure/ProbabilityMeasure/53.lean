import Mathlib

/-- The total mass of the sum of two finite measures is the sum of their masses. -/
lemma FiniteMeasure.mass_add
    {Ω : Type*} [MeasurableSpace Ω]
    (μ ν : MeasureTheory.FiniteMeasure Ω) :
    (μ + ν).mass = μ.mass + ν.mass := by
  sorry
