import Mathlib

open scoped BigOperators
open NNReal

namespace NNReal

lemma geom_mean_le_arith_mean
    {ι : Type _} (s : Finset ι) (w z : ι → ℝ≥0)
    (hw' : ∑ i ∈ s, w i = (1 : ℝ≥0)) :
    (∏ i ∈ s, z i ^ (w i).toReal) ≤
      ∑ i ∈ s, w i * z i := by
  sorry

end NNReal