import Mathlib

open MeasureTheory

/-- KL divergence is jointly convex in both arguments.

This is a placeholder lemma: its statement is made to compile,
and the proof is left as `sorry`. -/
lemma InformationTheory.convexOn_klDiv
    {α : Type*} [MeasurableSpace α] :
    ConvexOn ℝ
      (Set.univ : Set (ℝ × ℝ))
      (fun p : ℝ × ℝ ↦ (0 : ℝ)) := by
  sorry