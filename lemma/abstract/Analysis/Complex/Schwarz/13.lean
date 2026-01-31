import Mathlib

/-- If a complex differentiable map on an open set preserves all distances, then it is a Euclidean
isometry. -/
lemma isometry_of_isometryOn_univ_complex
    {f : ℂ → ℂ}
    (hDiff : Differentiable ℂ f)
    (hisom : ∀ z w : ℂ, dist (f z) (f w) = dist z w) :
    Isometry f := by
  -- We do not actually need differentiability: distance preservation alone implies isometry.
  exact Isometry.of_dist_eq hisom