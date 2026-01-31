import Mathlib

open scoped BigOperators

namespace NNReal

lemma summable_condensed_iff_of_nonincreasing
    {f : ℕ → ℝ≥0}
    (hf : ∀ ⦃m n : ℕ⦄, m ≤ n → f n ≤ f m) :
    Summable (fun k : ℕ => (2 : ℝ≥0) ^ k * f (2 ^ k)) ↔
      Summable f := by
  sorry

end NNReal