import Mathlib

lemma toRight_range_inr {β} :
    ((∅ : Finset (PUnit ⊕ β))).toRight = (∅ : Finset β) := by
  sorry