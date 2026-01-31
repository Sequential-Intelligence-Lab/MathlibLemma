import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

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