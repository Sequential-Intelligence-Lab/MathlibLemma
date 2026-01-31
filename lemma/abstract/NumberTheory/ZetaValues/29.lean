import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma hasSum_one_div_nat_pow_mul_sin_symm (k : ℕ) (hk : k ≠ 0) (x : ℝ) :
    HasSum
      (fun n : ℕ =>
        (1 / (n : ℝ) ^ (2 * k + 1)) *
          Real.sin (2 * Real.pi * n * (1 - x)))
      ( (-1 : ℝ) ^ (k + 1)
          * (2 * Real.pi) ^ (2 * k + 1)
          / 2
          / (Nat.factorial (2 * k + 1))
          * (Polynomial.map (algebraMap ℚ ℝ)
                (Polynomial.bernoulli (2 * k + 1))).eval (1 - x)) := by
  sorry