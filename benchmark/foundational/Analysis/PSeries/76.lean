import Mathlib

namespace MyNamespace

open Filter BigOperators

lemma Real.tendsto_sum_range_one_div_nat_succ_atTop_iff :
    Tendsto
      (fun n : ℕ => ∑ i ∈ Finset.range n, (1 / (i + 1 : ℝ)))
      (Filter.atTop : Filter ℕ)
      (Filter.atTop : Filter ℝ) := by
  sorry

end MyNamespace