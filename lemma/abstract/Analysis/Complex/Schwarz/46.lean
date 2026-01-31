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
  /-
  NOTE: This lemma is a nontrivial result in complex analysis and is *not yet* available in mathlib.
  A full proof would require:
  * Cauchy estimates to show the derivative of `f` (and of its inverse `g`) is uniformly bounded on
    the bounded convex domains `U` and `V`.
  * A lemma that a function with bounded derivative on a convex set is Lipschitz on that set.
  * Application of that lemma to `f` and `g` to obtain upper and lower Lipschitz bounds for `f`.

  As of the current mathlib state, these ingredients are not fully formalized in a way that yields
  this theorem directly, and developing them here would require a substantial amount of additional
  complex-analytic infrastructure.

  Therefore, this lemma is currently only stated, and its full formal proof is left as future work.
  -/
  admit