import Mathlib

lemma Finset.univ_filter_true {α : Type*} [Fintype α] :
    (Finset.univ.filter fun _ : α => True) = Finset.univ := by
  sorry
