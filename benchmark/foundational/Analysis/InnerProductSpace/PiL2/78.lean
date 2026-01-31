import Mathlib

open scoped RealInnerProductSpace

lemma EuclideanSpace.ball_zero_eq_inner
    {n : Type*} [Fintype n]
    (r : ℝ) (hr : 0 ≤ r) :
    Metric.ball (0 : EuclideanSpace ℝ n) r =
      {x : EuclideanSpace ℝ n |
        inner (𝕜 := ℝ) (E := EuclideanSpace ℝ n) x x < r ^ 2} := by
  sorry