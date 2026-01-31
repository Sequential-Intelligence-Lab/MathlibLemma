import Mathlib

lemma trunc_of_nonempty_fintype_eq_some {α : Type*} [Nonempty α] [Fintype α] :
    ∃ a : α, truncOfNonemptyFintype α = Trunc.mk a := by
  classical
  sorry
