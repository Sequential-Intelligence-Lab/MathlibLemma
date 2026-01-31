import Mathlib

open Complex

lemma fourierCoeff_bernoulli_nonzero
    (k : ℕ) (hk : k ≠ 0) (n : ℤ) (hn : n ≠ 0) :
    fourierCoeff (fun z : UnitAddCircle => ((periodizedBernoulli k z : ℝ) : ℂ)) n ≠ 0 := by
  sorry