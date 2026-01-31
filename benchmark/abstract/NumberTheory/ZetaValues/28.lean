import Mathlib

lemma hasSum_one_div_nat_pow_mul_sin_pi_half (k : ℕ) (hk : k ≠ 0) :
    HasSum
      (fun n : ℕ =>
        1 / (n : ℝ) ^ (2 * k + 1) * Real.sin (Real.pi * n / 2))
      ((-1 : ℝ) ^ (k + 1) * (Real.pi) ^ (2 * k + 1) / 2 /
        (Nat.factorial (2 * k + 1)) *
        (Polynomial.map (algebraMap ℚ ℝ)
          (Polynomial.bernoulli (2 * k + 1))).eval (1 / 4)) := by
  sorry