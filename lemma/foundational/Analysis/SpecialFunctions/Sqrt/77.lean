import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_comp_pow_two :
    Real.sqrt ∘ (fun x : ℝ => x ^ 2) = fun x => |x| := by
  -- Use the ext lemma to show that the functions are equal pointwise.
  ext x
  -- Consider the cases where x is non-negative or non-positive.
  cases' le_total 0 x with hx hx <;> simp_all [abs_of_nonneg, abs_of_nonpos, Real.sqrt_sq_eq_abs]
  -- For each case, simplify using the properties of absolute value and square root.
  <;> linarith