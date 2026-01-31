import Mathlib

open scoped BigOperators

namespace NNReal

lemma arith_mean_le_rpow_mean_iff
    {ι : Type _} (s : Finset ι)
    (w z : ι → ℝ≥0)
    (hw' : s.sum (fun i => w i) = (1 : ℝ≥0))
    {p : ℝ} (hp1 : 1 < p) :
    (s.sum (fun i => w i * z i) ≤
        (s.sum (fun i => w i * (z i) ^ p)) ^ (1 / p)) ∧
      ((s.sum (fun i => w i * z i) =
        (s.sum (fun i => w i * (z i) ^ p)) ^ (1 / p))
        ↔ ∀ i ∈ s, ∀ j ∈ s, z i = z j) := by
  sorry

end NNReal