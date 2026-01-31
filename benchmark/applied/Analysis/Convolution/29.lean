import Mathlib

open MeasureTheory

lemma convolution_assoc_general
  {𝕜 G E E' E'' F F' : Type*} [RCLike 𝕜]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G] [BorelSpace G]
  (μ ν : Measure G)
  [SFinite μ] [SFinite ν]
  [μ.IsAddRightInvariant] [ν.IsAddRightInvariant]
  [MeasurableAdd₂ G] [MeasurableNeg G]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup E'']
  [NormedAddCommGroup F] [NormedAddCommGroup F']
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 E'']
  [NormedSpace 𝕜 F] [NormedSpace 𝕜 F'] [NormedSpace ℝ F] [NormedSpace ℝ F']
  (L₁ : E →L[𝕜] E' →L[𝕜] F) (L₂ : F →L[𝕜] E'' →L[𝕜] F')
  (L₃ : E →L[𝕜] F →L[𝕜] F') (L₄ : E' →L[𝕜] E'' →L[𝕜] F)
  (hL : ∀ x y z, L₂ (L₁ x y) z = L₃ x (L₄ y z))
  (f : G → E) (g : G → E') (k : G → E'') :
  convolution (convolution f g L₁ ν) k L₂ μ
    = convolution f (convolution g k L₄ μ) L₃ ν :=
by
  sorry