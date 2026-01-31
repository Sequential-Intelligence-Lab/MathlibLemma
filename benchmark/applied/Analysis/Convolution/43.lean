import Mathlib

open scoped Measure

lemma posConvolution_translation_invariant
  {E E' F : Type*}
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ E'] [NormedSpace ℝ F]
  (f : ℝ → E) (g : ℝ → E') (L : E →L[ℝ] E' →L[ℝ] F)
  (ν : MeasureTheory.Measure ℝ) [MeasureTheory.Measure.IsMulLeftInvariant ν]
  (a : ℝ) :
  MeasureTheory.posConvolution (fun x => f (x + a)) (fun x => g (x + a)) L ν
    = fun x => MeasureTheory.posConvolution f g L ν (x + a) :=
by
  sorry