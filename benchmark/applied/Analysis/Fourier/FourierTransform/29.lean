import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 30: Fourier transform sends translations to modulations and vice versa
lemma Real.fourierIntegral_translation
  (f : ℝ → ℂ) (a : ℝ) :
  Real.fourierIntegral (fun x => f (x - a))
    =
  fun w => Real.fourierIntegral f w * (Real.fourierChar (a * w)) := by
  sorry
