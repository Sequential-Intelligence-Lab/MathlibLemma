import Mathlib

open Metric
open scoped RealInnerProductSpace

lemma EuclideanSpace.sphere_zero_eq_inner
    {n : Type*} [Fintype n]
    (r : ℝ) (hr : 0 ≤ r) :
    sphere (0 : EuclideanSpace ℝ n) r =
      {x : EuclideanSpace ℝ n | inner ℝ x x = r ^ 2} := by
  ext x
  constructor
  · -- From membership in the metric sphere to the inner-product condition
    intro hx
    -- On the sphere: dist x 0 = r, hence ‖x‖ = r
    have hnorm : ‖x‖ = r := by
      simpa [sphere, dist_eq_norm] using hx
    -- In a real inner product space: inner x x = ‖x‖^2
    have hinner : inner ℝ x x = ‖x‖ ^ 2 := by
      simpa using (real_inner_self_eq_norm_sq (x := x))
    -- Replace ‖x‖ with r
    simpa [hnorm] using hinner
  · -- From the inner-product condition to membership in the metric sphere
    intro hx
    -- Translate to a statement about norms squared
    have hnormsq : ‖x‖ ^ 2 = r ^ 2 := by
      simpa [real_inner_self_eq_norm_sq (x := x)] using hx
    -- From equality of squares, get two cases for the norm
    have hcases : ‖x‖ = r ∨ ‖x‖ = -r :=
      (sq_eq_sq_iff_eq_or_eq_neg (a := ‖x‖) (b := r)).mp hnormsq
    -- Use nonnegativity to select the correct case
    have hnorm : ‖x‖ = r := by
      rcases hcases with h | h
      · exact h
      ·
        -- case ‖x‖ = -r
        -- Since ‖x‖ ≥ 0 and -r ≥ 0, we get r ≤ 0,
        -- combined with hr : 0 ≤ r this forces r = 0.
        have : 0 ≤ -r := by
          have := norm_nonneg x
          simpa [h] using this
        have hr' : r ≤ 0 := by
          simpa [neg_nonneg] using this
        have hr0 : r = 0 := le_antisymm hr' hr
        -- Now from ‖x‖ = -r and r = 0, deduce ‖x‖ = 0 = r
        have : ‖x‖ = 0 := by simpa [hr0] using h
        simpa [this, hr0]
    -- Convert norm equality to distance equality, hence membership in the sphere
    have : dist x 0 = r := by
      simpa [dist_eq_norm] using hnorm
    simpa [sphere] using this