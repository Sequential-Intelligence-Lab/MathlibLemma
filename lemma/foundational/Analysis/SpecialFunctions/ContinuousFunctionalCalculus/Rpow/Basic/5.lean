import Mathlib

open scoped Real
open NNReal

lemma NNReal.nnrpow_monotone_left (c : ℝ≥0) (hc : (1 : ℝ≥0) ≤ c) :
    Monotone (fun a : ℝ≥0 => NNReal.nnrpow a c) := by
  intro a b h
  -- Prove the inequality in ℝ after coercion
  have hreal :
      ((NNReal.nnrpow a c : ℝ≥0) : ℝ) ≤
        ((NNReal.nnrpow b c : ℝ≥0) : ℝ) := by
    -- Rewrite nnrpow in terms of Real.rpow
    change (a : ℝ) ^ (c : ℝ) ≤ (b : ℝ) ^ (c : ℝ)
    -- Needed hypotheses for Real.rpow_le_rpow
    have ha0 : 0 ≤ (a : ℝ) := by
      -- 0 ≤ a in ℝ≥0, then cast
      exact_mod_cast (show (0 : ℝ≥0) ≤ a from bot_le)
    have hle : (a : ℝ) ≤ (b : ℝ) := by
      exact_mod_cast h
    have hc0 : (0 : ℝ) ≤ (c : ℝ) := by
      -- 0 ≤ c in ℝ≥0, then cast
      exact_mod_cast (show (0 : ℝ≥0) ≤ c from zero_le _)
    -- Apply monotonicity of Real.rpow in the base for nonnegative exponent
    exact Real.rpow_le_rpow ha0 hle hc0
  -- Transfer the inequality back to ℝ≥0
  exact_mod_cast hreal