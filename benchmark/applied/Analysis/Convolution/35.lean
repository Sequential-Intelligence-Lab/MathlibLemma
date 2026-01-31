import Mathlib

lemma posConvolution_measurable
  {E E' F : Type*}
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ E'] [NormedSpace ℝ F]
  [MeasurableSpace ℝ]
  [MeasurableSpace E] [MeasurableSpace E'] [MeasurableSpace F]
  (f : ℝ → E) (g : ℝ → E') (L : E →L[ℝ] E' →L[ℝ] F)
  (hf : Measurable f) (hg : Measurable g) :
  Measurable (MeasureTheory.posConvolution f g L) :=
by
  sorry