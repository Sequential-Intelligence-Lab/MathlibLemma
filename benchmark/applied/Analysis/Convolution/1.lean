import Mathlib

lemma convolution_exists_of_locallyIntegrable_right
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G] [BorelSpace G]
  [IsTopologicalAddGroup G] [NormedSpace ℝ F]
  (L : E →L[𝕜] E' →L[𝕜] F) (μ : MeasureTheory.Measure G)
  (f : G → E) (g : G → E')
  (hg : MeasureTheory.LocallyIntegrable g μ)
  (hf : Continuous f) (hf_cpt : HasCompactSupport f) :
  MeasureTheory.ConvolutionExists f g L μ :=
by
  sorry
