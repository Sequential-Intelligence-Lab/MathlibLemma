import Mathlib

lemma card_toLeft_lt_card {α β} {u : Finset (α ⊕ β)} :
    u.toLeft.card < u.card → u.toRight.Nonempty := by
  sorry
