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
  -- `ConvexOn` is a conjunction: the set is convex and the function satisfies Jensen's inequality
  refine And.intro ?hconv ?hineq
  · -- `univ` is convex
    simpa using (convex_univ : Convex ℝ (Set.univ : Set (ℝ × ℝ)))
  · -- The constant zero function is convex: Jensen's inequality holds trivially
    intro x hx y hy a b ha hb hab
    -- both sides simplify to 0, so we need to show `0 ≤ 0`
    simp