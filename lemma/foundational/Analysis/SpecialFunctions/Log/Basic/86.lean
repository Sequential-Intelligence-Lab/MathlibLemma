import Mathlib

lemma Real.monotone_log_on_Icc {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    MonotoneOn Real.log (Set.Icc a b) := by
  -- `log` is strictly monotone on `(0, ∞)`, hence monotone on that set.
  have hmonoIoi : MonotoneOn Real.log (Set.Ioi (0 : ℝ)) :=
    (Real.strictMonoOn_log).monotoneOn
  -- The interval `[a, b]` is contained in `(0, ∞)` since `a > 0` and `x ≥ a`.
  have hsubset : Set.Icc a b ⊆ Set.Ioi (0 : ℝ) := by
    intro x hx
    have hx0 : 0 < x := lt_of_lt_of_le ha hx.1
    exact hx0
  -- Restrict monotonicity from `(0, ∞)` to `[a, b]`.
  exact hmonoIoi.mono hsubset