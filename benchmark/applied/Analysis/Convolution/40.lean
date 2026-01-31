import Mathlib

open scoped BigOperators
open MeasureTheory

lemma posConvolution_add_left
  {E E' F : Type*}
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ E'] [NormedSpace ℝ F]
  (f f' : ℝ → E) (g : ℝ → E') (L : E →L[ℝ] E' →L[ℝ] F)
  (ν : MeasureTheory.Measure ℝ)
  (hf  : MeasureTheory.IntegrableOn f  (Set.Ioi 0) ν)
  (hf' : MeasureTheory.IntegrableOn f' (Set.Ioi 0) ν)
  (hg  : MeasureTheory.IntegrableOn g  (Set.Ioi 0) ν) :
  MeasureTheory.posConvolution (fun x => f x + f' x) g L ν
    = fun x => MeasureTheory.posConvolution f  g L ν x
            + MeasureTheory.posConvolution f' g L ν x :=
by
  sorry