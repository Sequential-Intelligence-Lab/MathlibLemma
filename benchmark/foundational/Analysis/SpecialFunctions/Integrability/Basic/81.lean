import Mathlib

namespace MyNamespace

open MeasureTheory Complex

lemma integrableOn_Ioo_cpow_abs_iff {s : ℂ} {t : ℝ} (ht : 0 < t) :
    IntegrableOn (fun x : ℝ => ‖(x : ℂ) ^ s‖) (Set.Ioo 0 t) (MeasureTheory.volume) ↔
      -1 < s.re := by
  sorry

end MyNamespace