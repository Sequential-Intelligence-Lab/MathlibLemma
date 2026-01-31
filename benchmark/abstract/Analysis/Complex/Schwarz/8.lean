import Mathlib

/-- A version of Schwarz lemma for maps from a disk into a convex subset of a complex normed space. -/
lemma norm_deriv_le_div_of_mapsTo_convex
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f : ℂ → E} {c : ℂ} {R₁ : ℝ} {K : Set E}
    (hR : 0 < R₁)
    (hK : Convex ℝ K)
    (hDiff : DifferentiableOn ℂ f (Metric.ball c R₁))
    (h_maps : Set.MapsTo f (Metric.ball c R₁) K)
    (hCenter : f c ∈ K)
    (hBound : ∀ z ∈ K, ‖z - f c‖ ≤ 1) :
    ‖deriv f c‖ ≤ 1 / R₁ := by
  sorry
