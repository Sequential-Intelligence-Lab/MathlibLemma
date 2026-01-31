import Mathlib

lemma Real.log_nat_factorial (n : ℕ) :
    Real.log (Nat.factorial n : ℝ) =
      (Nat.factorization (Nat.factorial n)).sum
        (fun p t => t * Real.log p) := by
  sorry
