import Mathlib

/-- A complex differentiable map on a convex domain which maps straight segments to straight
segments and is not constant must be affine. -/
lemma eqOn_affine_of_maps_segments
    {f : ℂ → ℂ} {U : Set ℂ}
    (hUopen : IsOpen U) (hUconv : Convex ℝ U)
    (hDiff : DifferentiableOn ℂ f U)
    (hSeg :
      ∀ (x y : ℂ),
        x ∈ U → y ∈ U →
        ∀ (t : ℝ), t ∈ Set.Icc (0 : ℝ) 1 →
          f (t • x + (1 - t) • y) =
            t • f x + (1 - t) • f y) :
    ∃ a b : ℂ, Set.EqOn f (fun z => a * z + b) U := by
  sorry