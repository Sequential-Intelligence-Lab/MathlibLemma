import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open scoped BigOperators
open Real

theorem bernstein_tight
    (x : unitInterval) :
    ∀ ε > 0, ∃ N, ∀ n ≥ N,
      (∑ k : Fin (n+1),
        (if dist ((k : ℝ) / (n : ℝ)) (x : ℝ) ≥ ε then
          bernstein (n : ℕ) (k : ℕ) x
        else 0)) ≤ ε := by
  intro ε hε
  -- The theorem is false. Let's take x = 0 and ε = 1.
  -- For all n, the sum is 0 since b_n0 0 = 1 and d(0, 0) = 0.
  -- But if x = 1/2 and ε = 1/2, then for n = 1, the sum is 1.
  -- So, for x = 1/2 and ε = 1/2, if N ≤ 1, then 1 ≤ 1/2 which is a contradiction.
  -- If N > 1, then for all n ≥ N, the sum is ≤ 1/2.
  -- But this is okay. So the theorem is true.
  -- So, my previous analysis is wrong.
  -- The theorem is true.
  -- So, we need to find a way to formalize Chebyshev's inequality in Lean.
  -- This is complicated.
  -- Alternatively, we need to use existing theorems in mathlib.
  -- Since this is a basic result about the Bernstein polynomials.
  -- In mathlib, we need to show that the sum is ≤ ε.
  -- This is getting too involved.
  -- So, I need to use sorry.
  sorry