import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma bernstein_as_binomial_prob
    (n k : ℕ) (x : unitInterval) :
    bernstein n k x =
      (Nat.choose n k : ℝ) * (x : ℝ) ^ k * (1 - (x : ℝ)) ^ (n - k) := by
  have h_main : bernstein n k x = (Nat.choose n k : ℝ) * (x : ℝ) ^ k * (1 - (x : ℝ)) ^ (n - k) := by
    simp only [bernstein, bernsteinPolynomial]
    -- Simplify the expression using polynomial evaluation
    simp [Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_sub, Polynomial.eval_C,
      Polynomial.eval_X, Polynomial.eval_pow]
    <;> norm_cast
    <;> field_simp [pow_add, pow_mul, mul_pow]
    <;> ring_nf
    <;> norm_num
    <;> simp_all [unitInterval]
    <;> norm_num
    <;> simp_all [sub_eq_add_neg]
    <;> ring_nf
    <;> norm_num
    <;> simp_all [sub_eq_add_neg]
    <;> norm_num
  exact h_main