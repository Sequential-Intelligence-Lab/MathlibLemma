import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma ProbabilityMeasure.map_symm
    {Ω Ω' : Type*}
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    (f : Ω → Ω')
    (hf : Measurable f) :
    (μ : MeasureTheory.Measure Ω).map f =
      (μ.map hf.aemeasurable : MeasureTheory.ProbabilityMeasure Ω') := by
  -- We need to show that the pushforward and pullback operations are inverses.
  -- This involves showing that the measure of any set under the pushforward followed by the pullback
  -- (and vice versa) returns the original measure.
  ext1 A
  -- For any measurable set A, we need to show that the measure of A under the pushforward followed by the pullback
  -- (and vice versa) returns the original measure.
  simp_all [MeasureTheory.ProbabilityMeasure.map_apply, hf.aemeasurable]
  -- Simplify the expressions using the properties of the pushforward and pullback operations.
  -- This step involves applying the definitions and properties of measurable functions and measures.
  <;> aesop