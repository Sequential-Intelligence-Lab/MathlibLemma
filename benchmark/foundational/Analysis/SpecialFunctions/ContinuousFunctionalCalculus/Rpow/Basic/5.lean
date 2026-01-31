import Mathlib

open scoped Real

open NNReal

lemma NNReal.nnrpow_monotone_left (c : ℝ≥0) (hc : (1 : ℝ≥0) ≤ c) :
    Monotone (fun a : ℝ≥0 => NNReal.nnrpow a c) := by
  sorry