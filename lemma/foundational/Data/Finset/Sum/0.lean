import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_singleton_left {α β} [DecidableEq α] [DecidableEq β]
    (a : α) (t : Finset β) :
    ({a} : Finset α).disjSum t =
      insert (Sum.inl a : Sum α β)
        (t.map
          ⟨Sum.inr,
            by
              intro x y h
              cases h
              rfl⟩) := by
  -- Use the symmetry property of equality to show that the left-hand side equals the right-hand side.
  apply Eq.symm
  -- Extend the equality to the structure of the disjoint sum and the insert operation.
  ext x
  -- Perform case analysis on whether `x` is `Sum.inl a` or `Sum.inr b` for some `b`.
  by_cases h : x = Sum.inl a <;> simp_all [Finset.mem_disjSum, Finset.mem_insert, Finset.mem_map]
  -- For each case, simplify the membership conditions and use Aesop to handle the logical implications.
  <;> aesop