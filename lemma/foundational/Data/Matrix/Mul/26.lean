import Mathlib

open Matrix

lemma dotProduct_self_nonneg
    {m : Type _} [Fintype m]
    (v : m → ℝ) :
    0 ≤ dotProduct v v := by
  classical
  -- Unfold `dotProduct` to a sum over the finite type `m`
  change 0 ≤ ∑ i, v i * v i
  -- Rewrite the `Fintype` sum as an explicit `Finset.univ` sum
  change 0 ≤ (Finset.univ : Finset m).sum (fun i => v i * v i)
  -- A finite sum of nonnegative terms is nonnegative
  refine Finset.sum_nonneg ?_
  intro i hi
  simpa using (mul_self_nonneg (v i))