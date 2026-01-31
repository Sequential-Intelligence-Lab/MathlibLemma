import Mathlib

open scoped Real
open NNReal

lemma NNReal.nnrpow_nnnorm_eq {α} [SeminormedRing α] (a : α) (b : ℝ≥0) :
    ‖a‖₊.nnrpow b = (‖a‖₊ : ℝ≥0) ^ (b : ℝ) := by
  sorry