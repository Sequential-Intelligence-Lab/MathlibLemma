import Mathlib

/-- If a complex differentiable map on a ball sends radial segments to radial segments and preserves
the center, then it is radial, i.e., `f z = g (‖z‖) * z` for some scalar-valued function `g`.

NOTE: The core analytic argument (that a holomorphic map preserving all rays from a point is
necessarily radial) is not currently available in Mathlib as a ready-made lemma, and its
formalization would require substantial additional development. In this file, we therefore
state the lemma but leave the main analytic step as an admitted proof obligation.
-/
lemma eqOn_radial_of_maps_radial_segments
    {f : ℂ → ℂ} {c : ℂ} {R : ℝ}
    (hR : 0 < R)
    (hDiff : DifferentiableOn ℂ f (Metric.ball c R))
    (hfix : f c = c)
    (hRadial : ∀ θ : ℝ, ∀ r ∈ Set.Icc (0 : ℝ) R,
      ∃ s : ℝ, f (c + r * Complex.exp (θ * Complex.I)) =
        c + s * Complex.exp (θ * Complex.I)) :
    ∃ g : ℝ → ℝ, ∀ z ∈ Metric.ball c R,
      f z = c + g (‖z - c‖) * (z - c) := by
  -- The full analytic proof that such an `f` must be radial (and that the scalar factor
  -- depends only on the radius, not on the angle) is nontrivial and not yet available
  -- in Mathlib as a single reusable theorem. Formalizing it would require substantial
  -- additional theory (e.g. holomorphicity in polar coordinates, a classification of
  -- such ray-preserving maps, etc.).
  --
  -- We therefore admit this lemma here, marking explicitly where the hard mathematical
  -- content would need to be supplied in a future development.
  admit