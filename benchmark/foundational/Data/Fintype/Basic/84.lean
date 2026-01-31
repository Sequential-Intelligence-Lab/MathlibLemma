import Mathlib

lemma Finset.univ_sum_univ
    {α β : Type*} [Fintype α] [Fintype β] [DecidableEq α] [DecidableEq β] :
    (Finset.univ : Finset (α ⊕ β)) =
      ((Finset.univ.image Sum.inl) ∪ (Finset.univ.image Sum.inr)) := by
  sorry