import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 59: Relation between Real.fourierIntegral and Fourier.fourierIntegral for 𝕜 = ℝ
lemma Real.fourierIntegral_eq_Fourier_real
  (f : ℝ → ℂ) (w : ℝ) :
  Real.fourierIntegral f w =
    Fourier.fourierIntegral Real.fourierChar volume f w := by
  sorry
