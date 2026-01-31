import Mathlib

open MeasureTheory
open scoped Real

lemma integrableOn_Ioi_rpow_iff' (s : ℝ) :
    IntegrableOn (fun x : ℝ => x ^ s) (Set.Ioi 1) ↔ s < -1 := by
  sorry