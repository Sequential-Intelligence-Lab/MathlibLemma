import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

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
  have h₁ : ‖VectorFourier.fourierIntegral e μ L f‖ ≤ (∫ v, ‖f v‖ ∂μ) := by
    sorry
  exact h₁