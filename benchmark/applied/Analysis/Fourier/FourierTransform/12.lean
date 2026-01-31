import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

open scoped Complex
open MeasureTheory

-- 13: Commutation of Fourier integral with bounded linear maps in the target
lemma VectorFourier.fourierIntegral_comp_continuousLinearMap
  {𝕜 V W E F : Type*}
  [CommRing 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V]
  [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W]
  [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]
  (e : AddChar 𝕜 Circle)
  (μ : Measure V)
  (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜)
  (T : E →L[ℂ] F)
  (f : V → E) (w : W)
  (hf : Integrable f μ) :
  T (VectorFourier.fourierIntegral e μ L f w) =
    VectorFourier.fourierIntegral e μ L (fun v => T (f v)) w := by
  sorry