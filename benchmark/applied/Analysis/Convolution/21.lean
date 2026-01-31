import Mathlib

open scoped MeasureTheory

lemma convolution_comp_translation_right'
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [AddGroup G] [TopologicalSpace G] [IsTopologicalAddGroup G]
  [MeasurableSpace G] [BorelSpace G]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F]
  [NormedSpace ℝ F]
  (μ : MeasureTheory.Measure G)
  (L : E →L[𝕜] E' →L[𝕜] F)
  (f : G → E) (g : G → E') (a : G) :
  MeasureTheory.convolution f (fun x => g (a + x)) L μ
    = fun x => MeasureTheory.convolution f g L μ (x + a) :=
by
  sorry