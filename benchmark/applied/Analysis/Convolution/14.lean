import Mathlib

lemma convolution_sub_right'
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F] [NormedSpace ℝ F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G]
  (L : E →L[𝕜] E' →L[𝕜] F) (μ : MeasureTheory.Measure G)
  (f : G → E) (g g' : G → E')
  (h1 : MeasureTheory.ConvolutionExists f g L μ)
  (h2 : MeasureTheory.ConvolutionExists f g' L μ) :
  MeasureTheory.convolution f (fun x => g x - g' x) L μ
    = fun x => MeasureTheory.convolution f g L μ x
            - MeasureTheory.convolution f g' L μ x :=
by
  sorry
