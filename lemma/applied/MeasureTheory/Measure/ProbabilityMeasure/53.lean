import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma FiniteMeasure.mass_add
    {Ω : Type*} [MeasurableSpace Ω]
    (μ ν : MeasureTheory.FiniteMeasure Ω) :
    (μ + ν).mass = μ.mass + ν.mass := by
  -- Use the fact that the mass of a measure is its value on the entire space.
  rw [MeasureTheory.FiniteMeasure.mass, MeasureTheory.FiniteMeasure.mass, MeasureTheory.FiniteMeasure.mass]
  -- Simplify the expression using the additivity of measures.
  simp [add_assoc]
  -- Apply the additivity property of measures to the entire space.
  <;> apply MeasureTheory.Measure.add_apply
  -- Ensure all measures are properly defined and finite.
  <;> apply MeasureTheory.FiniteMeasure.toMeasure
  <;> apply MeasureTheory.FiniteMeasure.toMeasure