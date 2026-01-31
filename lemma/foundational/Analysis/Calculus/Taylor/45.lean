import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


variable {E : Type*}

theorem taylorWithinEval_polynomial_like_two
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithin f 2 s x₀ =
      PolynomialModule.comp (Polynomial.X - Polynomial.C x₀)
        (PolynomialModule.single ℝ 0 (taylorCoeffWithin f 0 s x₀) +
         PolynomialModule.single ℝ 1 (taylorCoeffWithin f 1 s x₀) +
         PolynomialModule.single ℝ 2 (taylorCoeffWithin f 2 s x₀)) := by 
  simp [taylorWithin, Finset.sum_range_succ, PolynomialModule.comp, PolynomialModule.single]
  all_goals ring