import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_eq_taylorWithin_eval
    (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval f n s x₀ x =
      PolynomialModule.eval x (taylorWithin f n s x₀) := by
  simp [taylorWithinEval]
  <;>
  congr <;>
  simp_all [taylorWithin, Polynomial.aeval_def]
  <;>
  rfl