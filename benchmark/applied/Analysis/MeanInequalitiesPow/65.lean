import Mathlib

open BigOperators

universe u

namespace ENNReal

lemma power_mean_monotone_aux
    {ι : Type u} [DecidableEq ι] (s : Finset ι)
    (w z : ι → ℝ≥0∞) (hw' : ∑ i ∈ s, w i = (1 : ℝ≥0∞))
    {p q : ℝ} (hp1 : 1 ≤ p) (hpq : p ≤ q) :
    (∑ i ∈ s, w i * (z i).rpow q).rpow (1 / q) ≤
      (∑ i ∈ s, w i * (z i).rpow p).rpow (1 / p) := by
  sorry

end ENNReal