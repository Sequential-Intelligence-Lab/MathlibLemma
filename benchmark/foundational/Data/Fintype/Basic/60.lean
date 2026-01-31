import Mathlib

lemma Finite.exists_minimal_wrt {α : Type*} [Finite α]
    (r : α → α → Prop) (P : α → Prop)
    (hP : ∃ x, P x) (htrans : ∀ {x y z}, r x y → r y z → r x z)
    (hwell : ∀ x, ¬r x x) :
    ∃ x, P x ∧ ∀ y, P y → r y x → False := by
  classical
  sorry
