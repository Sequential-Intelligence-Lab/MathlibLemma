import Mathlib

open NNReal

lemma NNReal.nnrpow_strictMono_right (a : ℝ≥0) (ha : 1 < a) :
    StrictMono (fun c : ℝ≥0 => NNReal.nnrpow a c) := by
  sorry