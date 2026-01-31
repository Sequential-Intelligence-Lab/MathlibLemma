import Mathlib

lemma disjSum_eq_left {α β} (s : Finset α) (t : Finset β) :
    s.disjSum t = s.map .inl ↔ t = ∅ := by
  constructor
  · intro h
    -- Compare cardinalities to show `t` must be empty.
    have hc := congrArg Finset.card h
    have hc' : s.card + t.card = s.card + 0 := by
      simpa [Finset.card_disjSum, Finset.card_map] using hc
    have ht0 : t.card = 0 := Nat.add_left_cancel hc'
    exact Finset.card_eq_zero.mp ht0
  · intro ht
    subst ht
    -- Now `t` is empty; show the two finsets are equal by extensionality.
    ext x <;> cases x <;> simp