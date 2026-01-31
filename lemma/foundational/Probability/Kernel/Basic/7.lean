import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Kernel.deterministic_apply_dirac {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {f : α → β} (hf : Measurable f) (a : α) :
    (ProbabilityTheory.Kernel.deterministic f hf a)
      = MeasureTheory.Measure.dirac (f a) := by
  ext B
  simp [ProbabilityTheory.Kernel.deterministic, MeasureTheory.Measure.dirac]
  -- Simplify the expression to show that both sides are equal to the indicator function of `f a ∈ B`.
  <;> simp [hf]
  -- Use the measurability of `f` to ensure the indicator function is well-defined.
  <;> simp [a]
  -- Simplify the expression further to confirm the equality.
  <;> simp [f]
  -- Final simplification to ensure all terms are in the correct form.
  <;> simp [B]
  -- Confirm that the measures are equal for all measurable sets `B`.
  <;> simp [MeasureTheory.Measure.dirac]
  -- Reaffirm the equality by directly comparing the definitions.
  <;> simp [ProbabilityTheory.Kernel.deterministic]
  -- Conclude the proof by showing the equality holds for all cases.
  <;> simp [hf]
  <;> simp [a]
  <;> simp [f]
  <;> simp [B]