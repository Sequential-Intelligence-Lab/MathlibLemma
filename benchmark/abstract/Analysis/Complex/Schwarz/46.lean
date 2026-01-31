import Mathlib

/-- A complex differentiable bijection between bounded convex open subsets of `ℂ` with bounded
inverse derivative is biLipschitz.

Currently this is only stated (not proved). -/
lemma biLipschitz_of_biholomorph_between_bounded_convex
    {f : ℂ → ℂ} {U V : Set ℂ}
    (hUopen : IsOpen U) (hVopen : IsOpen V)
    (hUconv : Convex ℝ U) (hVconv : Convex ℝ V)
    (hUbound : Bornology.IsBounded U) (hVbound : Bornology.IsBounded V)
    (hDiff : DifferentiableOn ℂ f U)
    (hMaps : Set.MapsTo f U V)
    (hBij : Set.BijOn f U V)
    (hInvDiff : ∃ g : ℂ → ℂ, DifferentiableOn ℂ g V ∧
      (∀ y ∈ V, g (f y) = y) ∧ (∀ x ∈ U, f (g x) = x)) :
    ∃ K > 0, ∀ z ∈ U, ∀ w ∈ U,
      K⁻¹ * dist z w ≤ dist (f z) (f w) ∧
        dist (f z) (f w) ≤ K * dist z w := by
  sorry