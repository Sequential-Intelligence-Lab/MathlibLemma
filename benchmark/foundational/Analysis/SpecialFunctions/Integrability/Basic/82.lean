import Mathlib

open MeasureTheory
open Set

lemma integrableOn_Ioc_cpow_iff {s : ℂ} {t : ℝ} (ht : 0 < t) :
    IntegrableOn (fun x : ℝ => (x : ℂ) ^ s) (Ioc (0 : ℝ) t) ↔ -1 < s.re := by
  sorry