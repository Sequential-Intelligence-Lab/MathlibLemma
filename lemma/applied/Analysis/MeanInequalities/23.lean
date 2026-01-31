import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.inner_le_Lp_mul_Lq_subtype
    {ι : Type*} (s : Finset ι)
    (t : Set ι) [DecidablePred (fun i => i ∈ t)]
    (f g : ι → ℝ) {p q : ℝ} (hpq : p.HolderConjugate q) :
    Finset.sum (s := s) (fun i => f i * g i) =
      Finset.sum (s := s.filter (fun i => i ∈ t)) (fun i => f i * g i)
      + Finset.sum (s := s.filter (fun i => i ∉ t)) (fun i => f i * g i) := by
  -- The theorem is a direct application of splitting a sum over a finite set using a predicate.
  -- We want to split the sum over `s` based on whether each element `i` is in `t` or not.
  -- The standard library provides a lemma for this exact scenario.
  rw [Finset.sum_filter_add_sum_filter_not]
  -- The goal here is to show that the sum over the entire set `s` equals the sum over the subset
  -- where the predicate holds (`i ∈ t`) plus the sum over the subset where the predicate does
  -- not hold (`i ∉ t`). This is exactly what `Finset.sum_filter_add_sum_filter_not` provides.
  all_goals try simp