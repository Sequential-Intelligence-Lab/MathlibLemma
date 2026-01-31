import Mathlib

lemma posConvolution_zero_right
  {E E' F : Type*}
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ E'] [NormedSpace ℝ F]
  (f : ℝ → E) (L : E →L[ℝ] E' →L[ℝ] F) (ν : MeasureTheory.Measure ℝ) :
  MeasureTheory.posConvolution f (fun _ => (0 : E')) L ν = 0 :=
by
  sorry
