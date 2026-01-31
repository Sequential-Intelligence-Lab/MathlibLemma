import Mathlib

open MeasureTheory

lemma convolution_ae_stronglyMeasurable
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G] [BorelSpace G]
  [IsTopologicalAddGroup G] [NormedSpace ℝ F]
  (μ : Measure G)
  [SigmaFinite μ] [Measure.IsAddRightInvariant μ]
  (L : E →L[𝕜] E' →L[𝕜] F)
  (f : G → E) (g : G → E')
  (hf : AEStronglyMeasurable f μ) (hg : AEStronglyMeasurable g μ) :
  AEStronglyMeasurable (convolution f g L μ) μ :=
by
  sorry