import Mathlib

open MeasureTheory

lemma intervalIntegrable_zpow_of_nonneg
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ} {n : ℤ}
    (hpos : 0 ≤ n) :
    IntervalIntegrable (fun x => x ^ n) μ a b := by
  -- Lift the nonnegative integer exponent `n : ℤ` to a natural number `k : ℕ`
  lift n to ℕ using hpos with k hk
  -- Replace `n` by `k` in the goal
  subst hk
  -- Now the exponent is `↑k`, i.e. `Int.ofNat k`, and we use continuity
  -- of `x ↦ x` and the fact that `pow` preserves continuity.
  -- Then rewrite `zpow` (integer power) to `pow` (natural power) via `zpow_ofNat`.
  simpa [zpow_ofNat] using
    ( (continuous_id.pow k).intervalIntegrable (μ := μ) (a := a) (b := b) )