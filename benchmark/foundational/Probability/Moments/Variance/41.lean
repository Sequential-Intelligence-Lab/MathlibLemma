import Mathlib

open ProbabilityTheory MeasureTheory

lemma evariance_add_le_two_mul
    {Ω : Type*} [mΩ : MeasurableSpace Ω] (μ : Measure Ω)
    [IsFiniteMeasure μ]
    {X Y : Ω → ℝ}
    (hX : MemLp X 2 μ)
    (hY : MemLp Y 2 μ) :
    evariance (X + Y) μ ≤
      2 * (evariance X μ + evariance Y μ) := by
  sorry