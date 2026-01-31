import Mathlib

open Real Complex MeasureTheory

lemma integrableOn_Icc_cpow_iff
    {s : ℂ} {t : ℝ} (ht : 0 < t) :
    IntegrableOn (fun x : ℝ => (x : ℂ) ^ s) (Set.Icc (0 : ℝ) t) := by
  sorry