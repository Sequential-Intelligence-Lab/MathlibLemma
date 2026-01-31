import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_comp_sq (f : ℝ → ℝ) :
    (fun x => √(f x ^ 2)) = fun x => |f x| := by
  ext x
  -- We need to show that √(f x ^ 2) = |f x| for all x.
  -- Consider the cases where f x is non-negative or non-positive.
  cases' le_total 0 (f x) with h h <;> simp_all [abs_of_nonneg, abs_of_nonpos, sqrt_sq_eq_abs]
  -- Case 1: f x ≥ 0
  -- √(f x ^ 2) = f x and |f x| = f x, so √(f x ^ 2) = |f x|.
  -- Case 2: f x ≤ 0
  -- √(f x ^ 2) = -f x and |f x| = -f x, so √(f x ^ 2) = |f x|.
  <;> linarith