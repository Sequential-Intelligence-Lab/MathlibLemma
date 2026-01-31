import Mathlib

open scoped BigOperators

lemma bernoulliFun_deriv_n (k : ℕ) (n : ℕ) :
    deriv^[n] (bernoulliFun (k + n)) =
      fun x => ((Nat.factorial (k + n) : ℝ) / (Nat.factorial k : ℝ)) * bernoulliFun k x := by
  sorry