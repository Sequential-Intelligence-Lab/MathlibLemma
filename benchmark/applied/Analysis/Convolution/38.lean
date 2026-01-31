import Mathlib

lemma posConvolution_zero_left
  {E E' F : Type*}
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ E'] [NormedSpace ℝ F]
  (g : ℝ → E') (L : E →L[ℝ] E' →L[ℝ] F) (ν : MeasureTheory.Measure ℝ) :
  MeasureTheory.posConvolution (fun _ => (0 : E)) g L ν = 0 :=
by
  sorry
