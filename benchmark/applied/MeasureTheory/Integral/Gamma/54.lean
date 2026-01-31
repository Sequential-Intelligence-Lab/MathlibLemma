import Mathlib

/-- A relation expressing the complex integral in terms of a real radial integral. -/
lemma Complex.integral_norm_kernel_eq_real_radial
    {p q : ℝ} (hp : 1 ≤ p) (hq : -2 < q) :
    ∫ z : ℂ, ‖z‖ ^ q * Real.exp (-‖z‖ ^ p) =
      2 * Real.pi * ∫ r in Set.Ioi (0 : ℝ), r ^ (q + 1) * Real.exp (-r ^ p) := by
  sorry
