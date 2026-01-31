import Mathlib

lemma convolution_eq_integral_comp_sub
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [AddCommGroup G] [TopologicalSpace G] [IsTopologicalAddGroup G]
  [MeasurableSpace G]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F] [NormedSpace ℝ F]
  (μ : MeasureTheory.Measure G)
  (L : E →L[𝕜] E' →L[𝕜] F)
  (f : G → E) (g : G → E') (x : G) :
  MeasureTheory.convolution f g L μ x
    = ∫ t, L (f (x - t)) (g t) ∂μ :=
by
  sorry
