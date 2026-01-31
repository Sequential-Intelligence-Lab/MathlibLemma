import Mathlib

/-- A formula for the Laplace transform of a Gamma kernel in terms of the Gamma function. -/
lemma Real.laplace_transform_gamma_kernel
    {a θ s : ℝ} (ha : 0 < a) (hθ : 0 < θ) (hs : 0 < s) :
    ∫ x in Set.Ioi (0 : ℝ), x ^ (a - 1) * Real.exp (-x / θ) * Real.exp (-s * x) =
      θ ^ a * Real.Gamma a / (1 + θ * s) ^ a := by
  sorry
