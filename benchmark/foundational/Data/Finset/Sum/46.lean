import Mathlib

lemma card_toRight_lt_card {α β} {u : Finset (α ⊕ β)} :
    u.toRight.card < u.card → u.toLeft.Nonempty := by
  sorry
