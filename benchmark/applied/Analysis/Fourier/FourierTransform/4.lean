import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 5: Continuity and boundedness combined into isBounded_iff lemma
lemma VectorFourier.isBounded_range_fourierIntegral_of_integrable
  {𝕜 V W E : Type*} [CommRing 𝕜] [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V]
  [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W]
  [NormedAddCommGroup E] [NormedSpace ℂ E]
  (e : AddChar 𝕜 Circle)
  (μ : MeasureTheory.Measure V)
  (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜)
  (he : Continuous e)
  (hL : Continuous fun p : V × W => L p.1 p.2)
  (f : V → E)
  (hf : MeasureTheory.Integrable f μ) :
  Bornology.IsBounded (Set.range (VectorFourier.fourierIntegral e μ L f)) := by
  sorry