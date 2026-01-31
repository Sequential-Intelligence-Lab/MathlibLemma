import Mathlib

open MeasureTheory Set

lemma integrableOn_Icc_rpow_iff {s t : ℝ} (ht : 0 < t) :
    IntegrableOn (fun x : ℝ => x ^ s) (Icc (0 : ℝ) t) := by
  sorry