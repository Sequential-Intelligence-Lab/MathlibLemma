import Mathlib

lemma convolution_const_left
  {𝕜 G E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F]
  [NormedSpace ℝ E'] [NormedSpace ℝ F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G]
  (L : 𝕜 →L[𝕜] E' →L[𝕜] F)
  (μ : MeasureTheory.Measure G) (c : 𝕜) (g : G → E') :
  MeasureTheory.convolution (fun _ => c) g L μ
    = fun x => L c (∫ t, g (x - t) ∂μ) :=
by
  sorry