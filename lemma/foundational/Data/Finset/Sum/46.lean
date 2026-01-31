import Mathlib

lemma card_toRight_lt_card {α β} {u : Finset (α ⊕ β)} :
    u.toRight.card < u.card → u.toLeft.Nonempty := by
  intro h
  -- Card decomposition of `u` into left and right parts
  have hcard :
      u.toLeft.card + u.toRight.card = u.card :=
    Finset.card_toLeft_add_card_toRight (u := u)
  -- Show `u.toLeft.card ≠ 0`, otherwise contradict `h`
  have hne : u.toLeft.card ≠ 0 := by
    intro hzero
    -- From hcard and hzero, deduce u.toRight.card = u.card
    have hr : u.toRight.card = u.card := by
      have := hcard
      simpa [hzero, zero_add] using this
    -- Then `h` becomes u.toRight.card < u.toRight.card, impossible
    have h' : u.toRight.card < u.toRight.card := by
      simpa [hr] using h
    exact lt_irrefl _ h'
  -- From `u.toLeft.card ≠ 0` get positivity
  have hpos : 0 < u.toLeft.card := Nat.pos_of_ne_zero hne
  -- Positive card implies nonemptiness
  exact Finset.card_pos.mp hpos