import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

/-- 99: VectorFourier commutes with finite linear combinations -/
lemma VectorFourier.fourierIntegral_finite_sum
  {𝕜 V W E : Type*} [CommRing 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V]
  [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W]
  [NormedAddCommGroup E] [NormedSpace ℂ E]
  (e : AddChar 𝕜 Circle)
  (μ : MeasureTheory.Measure V)
  (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜)
  (ι : Type*) [Fintype ι]
  (f : ι → V → E) (a : ι → ℂ) :
  VectorFourier.fourierIntegral e μ L (fun v => ∑ i, a i • f i v) =
    fun w => ∑ i, a i • VectorFourier.fourierIntegral e μ L (f i) w := by
  sorry