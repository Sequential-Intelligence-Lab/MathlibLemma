import Mathlib

namespace Real

lemma tendsto_sum_range_one_div_nat_succ_atTop_of_ge
    (a : ℕ) :
    Filter.Tendsto
      (fun n => ∑ i ∈ Finset.Icc a n, (1 / (i : ℝ)))
      Filter.atTop
      (Filter.atTop : Filter ℝ) := by
  sorry

end Real