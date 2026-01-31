import Mathlib

lemma Real.rpow_nonneg_iff {x y : ℝ} :
    0 ≤ x ^ y ↔ x ≠ 0 ∨ y = 0 ∨ 0 ≤ x := by
  -- This statement is false in ℝ. For example:
  -- let x := (-1 : ℝ), y := (1 : ℝ).
  -- Then 0 ≤ x ^ y is false (since (-1) ^ 1 = -1 < 0),
  -- but x ≠ 0 is true, so the right-hand side holds.
  --
  -- Hence the equivalence cannot be proved in Mathlib's Real.rpow theory.
  --
  -- We intentionally leave this as `sorry` because the lemma is not valid.
  sorry