import Mathlib

lemma convolution_zero_left
  {𝕜 G E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F] [NormedSpace ℝ F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G]
  (L : 𝕜 →L[𝕜] E' →L[𝕜] F) (μ : MeasureTheory.Measure G) (g : G → E') :
  MeasureTheory.convolution (fun _ => (0 : 𝕜)) g L μ = 0 :=
by
  sorry
