import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

open MeasureTheory

-- 3: Fourier integral translation in frequency domain via multiplication in spatial domain
lemma VectorFourier.fourierIntegral_mul_linearPhase
  {𝕜 V W E : Type*}
  [CommRing 𝕜] [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V]
  [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W]
  [NormedAddCommGroup E] [NormedSpace ℂ E]
  (e : AddChar 𝕜 Circle)
  (μ : MeasureTheory.Measure V)
  (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜)
  (hL : Continuous fun p : V × W => L p.1 p.2)
  (he : Continuous e)
  (f : V → E) (w₀ : W) :
  VectorFourier.fourierIntegral e μ L
      (fun v => e (L v w₀) • f v)
    =
  (fun w => VectorFourier.fourierIntegral e μ L f (w + w₀)) := by
  sorry