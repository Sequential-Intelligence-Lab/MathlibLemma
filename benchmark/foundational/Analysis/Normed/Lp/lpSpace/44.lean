import Mathlib

open scoped BigOperators

lemma lp.single_support_subset {α : Type*} {E : α → Type*}
    [DecidableEq α] [∀ i, NormedAddCommGroup (E i)]
    {p : ENNReal} (i : α) (x : E i) :
    {j : α | lp.single p i x j ≠ 0} ⊆ {i} := by
  sorry