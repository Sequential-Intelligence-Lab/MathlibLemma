import Mathlib

lemma disjSum_inter_left {α β} [DecidableEq α] [DecidableEq β]
    (s₁ s₂ : Finset α) (t : Finset β) :
    (s₁ ∩ s₂).disjSum t = (s₁.disjSum t) ∩ (s₂.disjSum t) := by
  -- Prove extensional equality by membership in `α ⊕ β`.
  ext x
  -- Case split on `x : α ⊕ β`
  refine Sum.rec ?hinl ?hinr x
  · intro a
    -- Elements coming from the left side of the sum.
    -- Both sides reduce to `a ∈ s₁ ∧ a ∈ s₂`.
    simp [Finset.mem_disjSum, Finset.mem_inter, and_left_comm, and_assoc]
  · intro b
    -- Elements coming from the right side of the sum.
    -- Left: `b ∈ t`; Right: `(b ∈ t) ∧ (b ∈ t)` which simplifies to `b ∈ t`.
    simp [Finset.mem_disjSum, Finset.mem_inter, and_left_comm, and_assoc]