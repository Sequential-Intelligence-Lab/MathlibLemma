import Mathlib

open Metric
open scoped RealInnerProductSpace

lemma EuclideanSpace.sphere_zero_eq_inner
    {n : Type*} [Fintype n]
    (r : ℝ) (hr : 0 ≤ r) :
    sphere (0 : EuclideanSpace ℝ n) r =
      {x : EuclideanSpace ℝ n | inner ℝ x x = r ^ 2} := by
  sorry