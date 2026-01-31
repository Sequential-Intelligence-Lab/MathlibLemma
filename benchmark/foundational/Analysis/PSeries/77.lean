import Mathlib

lemma Real.summable_one_div_natCast_iff_not_tendsto_atTop :
    (¬ Summable (fun n => 1 / (n : ℝ))) ↔
      Filter.Tendsto
        (fun n => ∑ i ∈ Finset.range n, (1 / (i + 1 : ℝ)))
        Filter.atTop
        Filter.atTop := by
  sorry