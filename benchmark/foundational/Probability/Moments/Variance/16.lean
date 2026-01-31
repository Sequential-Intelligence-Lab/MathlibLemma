import Mathlib

open ProbabilityTheory MeasureTheory

lemma variance_add_le
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : Measure Ω) [IsFiniteMeasure μ]
    {X Y : Ω → ℝ}
    (hX : MemLp X 2 μ)
    (hY : MemLp Y 2 μ) :
    variance (X + Y) μ ≤
      2 * (variance X μ + variance Y μ) := by
  sorry