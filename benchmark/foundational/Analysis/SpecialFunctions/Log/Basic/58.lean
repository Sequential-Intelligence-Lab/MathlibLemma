import Mathlib

lemma Real.tendsto_log_atTop_iff_coe :
    Filter.Tendsto (fun x : ℝ => Real.log x) Filter.atTop Filter.atTop ↔
      Filter.Tendsto (fun x : ℝ => x) (Filter.comap Real.exp Filter.atTop) Filter.atTop := by
  sorry