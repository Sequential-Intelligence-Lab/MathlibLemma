import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

-- 92: Fourier transform respects parity decomposition
lemma Real.fourierIntegral_parity_decomposition
  (f : ℝ → ℂ) :
  Real.fourierIntegral f =
    fun w => Real.fourierIntegral (fun x => (f x + f (-x)) / 2) w +
      Real.fourierIntegral (fun x => (f x - f (-x)) / 2) w := by
  sorry