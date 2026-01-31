import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

open scoped ComplexConjugate

-- 10: Integrability of integrand defining fourierIntegral for integrable f
lemma VectorFourier.integrable_kernel_smul_of_integrable
  {𝕜 V W E : Type*}
  [CommRing 𝕜]
  [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [TopologicalSpace V]
  [MeasurableSpace V] [BorelSpace V]
  [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W]
  [NormedAddCommGroup E] [NormedSpace ℂ E]
  [MeasurableSpace E] [BorelSpace E]
  -- allow scalar multiplication of E by Circle via its complex structure
  [SMul Circle E]
  (e : AddChar 𝕜 Circle)
  (μ : MeasureTheory.Measure V)
  (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜)
  (he : Continuous e)
  (hL : Continuous fun p : V × W => L p.1 p.2)
  (f : V → E)
  (hf : MeasureTheory.Integrable f μ)
  (w : W) :
  MeasureTheory.Integrable (fun v : V => (e (-L v w) : Circle) • f v) μ := by
  sorry