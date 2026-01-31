import Mathlib

lemma Real.log_real_toNNReal (x : ℝ) (hx : 0 ≤ x) :
    Real.log (Real.toNNReal x) = Real.log x := by
  -- First show that, as a real number, `toNNReal x` is just `x` when `x ≥ 0`.
  have hco : (Real.toNNReal x : ℝ) = x := by
    -- `Real.toNNReal` is defined via `max x 0`, so for `x ≥ 0` this is just `x`.
    simp [Real.toNNReal, hx, max_eq_left hx]
  -- Rewrite the logarithm using this equality.
  simpa [hco]