import Mathlib

lemma card_toLeft_lt_card {α β} {u : Finset (α ⊕ β)} :
    u.toLeft.card < u.card → u.toRight.Nonempty := by
  intro h
  -- Rewrite `u.card` using the standard decomposition into left and right parts
  have h' : u.toLeft.card < u.toLeft.card + u.toRight.card := by
    simpa [Finset.card_toLeft_add_card_toRight (u := u)] using h
  -- Prove `u.toRight` is nonempty by contradiction
  by_contra hne
  have hempty : u.toRight = (∅ : Finset β) :=
    (Finset.not_nonempty_iff_eq_empty).1 hne
  have : u.toLeft.card < u.toLeft.card := by
    simpa [hempty] using h'
  exact lt_irrefl _ this