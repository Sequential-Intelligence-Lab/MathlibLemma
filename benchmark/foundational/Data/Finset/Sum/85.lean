import Mathlib

lemma toLeft_empty {α} :
    (∅ : Finset (α ⊕ PUnit)).toLeft = (∅ : Finset α) := by
  sorry