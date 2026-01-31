import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma bernoulliFun_comp_linear (k : ℕ) (a b : ℝ) :
    bernoulliFun k (a * b) =
      (Polynomial.map (algebraMap ℚ ℝ) (Polynomial.bernoulli k)).eval (a * b) := by
  -- We need to show that the Bernoulli function evaluated at a * b is equal to the evaluation of the Bernoulli polynomial at a * b.
  -- This can be directly inferred from the definition of the Bernoulli function and the properties of polynomial evaluation.
  simp [bernoulliFun, Polynomial.eval_map]
  -- The `simp` tactic simplifies the expression using the definition of `bernoulliFun` and the `eval_map` lemma from the `Polynomial` module.
  -- This step effectively shows that the evaluation of the mapped polynomial at a * b is the same as the Bernoulli function evaluated at a * b.
  <;> ring
  -- The `ring` tactic is used to simplify any algebraic expressions that may arise during the proof, ensuring that the arithmetic is correct.
  <;> norm_num
  -- The `norm_num` tactic is used to normalize any numerical expressions, ensuring that numerical calculations are correct.
  <;> linarith
  -- The `linarith` tactic is used to solve any linear arithmetic problems that may arise during the proof, ensuring that the arithmetic is correct.
  <;> nlinarith
  -- The `nlinarith` tactic is used to solve any nonlinear arithmetic problems that may arise during the proof, ensuring that the arithmetic is correct.
  <;> nlinarith