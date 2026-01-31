import Mathlib

open scoped Real

lemma fourierCoeff_bernoulli_asymptotic (k : ℕ) :
    Asymptotics.IsBigO Filter.atTop
      (fun n : ℕ =>
        fourierCoeff (fun x : UnitAddCircle => (periodizedBernoulli k x : ℂ)) (n : ℤ))
      (fun n : ℕ => 1 / (n : ℂ)^k) := by
  sorry