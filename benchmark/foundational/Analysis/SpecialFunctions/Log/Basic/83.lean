import Mathlib

lemma Real.log_npow (x : ℝ) (n : ℕ) :
    Real.log (Nat.iterate (fun y => y * x) n 1) =
      Real.log (x ^ n) := by
  sorry
