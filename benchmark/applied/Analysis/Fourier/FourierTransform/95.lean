import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 96: Real Fourier transform and scaling of both domain and codomain
lemma Real.fourierIntegral_double_scaling
  (f : ℝ → ℂ) (a b : ℝ) (ha : a ≠ 0) :
  Real.fourierIntegral (fun x => b * f (a * x)) =
    fun w => b / |a| * Real.fourierIntegral f (w / a) := by
  sorry
