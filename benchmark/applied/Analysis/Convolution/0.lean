import Mathlib

lemma convolution_exists_of_locallyIntegrable_left
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G] [BorelSpace G]
  [IsTopologicalAddGroup G] [NormedSpace ℝ F]
  (L : E →L[𝕜] E' →L[𝕜] F) (μ : MeasureTheory.Measure G)
  (f : G → E) (g : G → E')
  (hf : MeasureTheory.LocallyIntegrable f μ)
  (hg : Continuous g) (hg_cpt : HasCompactSupport g) :
  MeasureTheory.ConvolutionExists f g L μ :=
by
  sorry
