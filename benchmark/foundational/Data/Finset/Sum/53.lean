import Mathlib

lemma toLeft_injective_iff {α β} :
    Function.Injective (@Finset.toLeft α β) ↔ (IsEmpty β) := by
  sorry
