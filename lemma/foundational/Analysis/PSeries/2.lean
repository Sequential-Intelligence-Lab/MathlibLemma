import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma SuccDiffBounded.comp_succ {C : ℕ} {u : ℕ → ℕ} (h : SuccDiffBounded C u) :
    SuccDiffBounded C fun n => u (n + 1) := by
  -- For part (a), we use the given property of u being SuccDiffBounded with constant C.
  -- This means that for all n, |u(n+1) - u(n)| ≤ C.
  -- We need to show that the shifted function u(n+1) is also SuccDiffBounded with the same constant C.
  -- Consider the difference between successive terms of the shifted function: |u(n+2) - u(n+1)|.
  -- Since u is SuccDiffBounded with constant C, we have |u(n+2) - u(n+1)| ≤ C.
  -- Thus, the shifted function u(n+1) also satisfies the SuccDiffBounded condition with constant C.
  refine' fun n => _
  simp_all [SuccDiffBounded]
  <;> omega