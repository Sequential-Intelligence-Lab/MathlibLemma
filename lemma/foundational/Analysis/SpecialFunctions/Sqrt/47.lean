import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_comp (f : ℝ → ℝ) :
    Real.sqrt ∘ f = fun x => √(f x) := by
  -- Use the ext lemma to show that two functions are equal if they are equal for all x.
  ext x
  -- Simplify the expression using the definition of function composition and the square root notation.
  simp [Function.comp_apply, Real.sqrt_eq_iff_mul_self_eq]