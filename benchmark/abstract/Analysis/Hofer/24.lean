import Mathlib

open Filter

/-- If a real function is continuous and `f x ≥ 0` for large `x`, and its limit at infinity
is negative, we get a contradiction. -/
lemma not_tendsto_atTop_of_eventually_nonneg_of_limit_neg
    {f : ℝ → ℝ} {L : ℝ}
    (hf : Tendsto f Filter.atTop (nhds L)) (hL : L < 0)
    (hnonneg : ∀ᶠ x in Filter.atTop, 0 ≤ f x) :
    False := by
  sorry