import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

/-- 9: Lp-norm inequality for fourierIntegral (L1 to L∞ bound) -/
lemma VectorFourier.norm_fourierIntegral_le_L1_norm
  {𝕜 V W E : Type*}
  [NormedField 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V]
  [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W]
  [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedSpace 𝕜 E]
  [Norm (W → E)]
  (e : AddChar 𝕜 Circle) (μ : MeasureTheory.Measure V)
  (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜) (f : V → E) :
  ‖VectorFourier.fourierIntegral e μ L f‖ ≤
    (∫ v, ‖f v‖ ∂μ) := by
  sorry