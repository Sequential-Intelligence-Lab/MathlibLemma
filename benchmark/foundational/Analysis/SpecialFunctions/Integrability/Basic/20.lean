import Mathlib

open MeasureTheory

lemma integrableOn_Ioc_rpow_iff {s t : ℝ} (ht : 0 < t) :
    IntegrableOn (fun x => x ^ s) (Set.Ioc (0 : ℝ) t) ↔ -1 < s := by
  sorry