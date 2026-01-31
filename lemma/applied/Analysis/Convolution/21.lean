import Mathlib

open scoped MeasureTheory

theorem convolution_comp_translation_right
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [AddCommGroup G] [TopologicalSpace G] [IsTopologicalAddGroup G]
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
  funext x
  simp [MeasureTheory.convolution, sub_eq_add_neg, add_comm, add_left_comm, add_assoc]

lemma convolution_comp_translation_right'
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [AddCommGroup G] [TopologicalSpace G] [IsTopologicalAddGroup G]
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
  -- Prove equality of functions pointwise
  funext x
  -- Unfold the definition of convolution on both sides and normalize with group laws
  simp [MeasureTheory.convolution, sub_eq_add_neg, add_comm, add_left_comm, add_assoc]
