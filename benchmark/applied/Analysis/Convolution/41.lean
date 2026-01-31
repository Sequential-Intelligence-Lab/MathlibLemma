import Mathlib

lemma posConvolution_add_right
  {E E' F : Type*}
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ E'] [NormedSpace ℝ F]
  (f : ℝ → E) (g g' : ℝ → E') (L : E →L[ℝ] E' →L[ℝ] F)
  (ν : MeasureTheory.Measure ℝ)
  (hf : MeasureTheory.IntegrableOn f (Set.Ioi 0) ν)
  (hg : MeasureTheory.IntegrableOn g (Set.Ioi 0) ν)
  (hg' : MeasureTheory.IntegrableOn g' (Set.Ioi 0) ν) :
  MeasureTheory.posConvolution f (fun x => g x + g' x) L ν
    = fun x => MeasureTheory.posConvolution f g L ν x
            + MeasureTheory.posConvolution f g' L ν x :=
by
  sorry