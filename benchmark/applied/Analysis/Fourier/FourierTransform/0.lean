import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 1: Fourier transform of zero
lemma VectorFourier.fourierIntegral_zero
  {𝕜 V W E : Type*} [CommRing 𝕜] [AddCommGroup V] [Module 𝕜 V] [MeasurableSpace V]
  [AddCommGroup W] [Module 𝕜 W]
  [NormedAddCommGroup E] [NormedSpace ℂ E]
  (e : AddChar 𝕜 Circle) (μ : MeasureTheory.Measure V) (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜) :
  VectorFourier.fourierIntegral e μ L (fun _ : V => (0 : E)) = 0 := by
  sorry