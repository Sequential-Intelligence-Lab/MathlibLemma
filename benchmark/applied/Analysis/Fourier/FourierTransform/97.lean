import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 98: Real Fourier transform of convolution with Gaussian is multiplication in frequency
lemma Real.fourierIntegral_convolution_gaussian
  (f : ℝ → ℂ) (a : ℝ) (ha : 0 < a) (hf : MeasureTheory.Integrable f) :
  Real.fourierIntegral (fun x => ∫ t, f t * Real.exp (-a * (x - t)^2)) =
    fun w => Real.fourierIntegral f w *
      (Real.sqrt (Real.pi / a) * Real.exp (- w^2 / (4 * a))) := by
  sorry