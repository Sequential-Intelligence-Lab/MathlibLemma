import Mathlib

lemma Finset.univ_filter_false {α : Type*} [Fintype α] :
    (Finset.univ.filter fun _ : α => False) = ∅ := by
  sorry
