import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Equiv.perm_sum_univ
    [AddCommMonoid β] [Fintype α] (e : α ≃ α) (f : α → β) :
    (Finset.univ : Finset α).sum (fun x => f (e x)) =
    (Finset.univ : Finset α).sum f := by
  -- Use the fact that e is a bijection to relabel the summation index.
  rw [Finset.sum_equiv e]
  -- Since addition is commutative and associative, the order of terms does not affect the sum.
  <;> simp [Finset.sum_congr]