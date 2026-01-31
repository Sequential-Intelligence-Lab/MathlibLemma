import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.sum_add_distrib' [AddCommMonoid β]
    (s : Finset α) (f g : α → β) :
    s.sum (fun x => f x + g x) = s.sum f + s.sum g := by
  -- Use the linearity property of summation to distribute the sum over addition.
  apply Eq.symm
  -- Apply the symmetry of equality to show that the left-hand side equals the right-hand side.
  simp [Finset.sum_add_distrib]
  -- Simplify the expression using the known result `Finset.sum_add_distrib` which states the linearity of summation.
  <;> rfl