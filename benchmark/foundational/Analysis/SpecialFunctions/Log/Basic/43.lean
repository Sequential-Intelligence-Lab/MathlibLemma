import Mathlib

lemma Real.log_factorial_le (n : ℕ) :
    Real.log (Nat.factorial n : ℝ) ≤
      Finset.sum (Finset.range n.succ) (fun k => Real.log (k + 1 : ℝ)) := by
  sorry