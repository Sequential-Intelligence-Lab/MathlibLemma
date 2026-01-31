import Mathlib

theorem Finset.min'_eq_of_forall_le_iff {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty)
    {a b : α} (ha : a ∈ s) (hb : b ∈ s)
    (h : ∀ x ∈ s, a ≤ x ↔ b ≤ x) :
    a = b := by
  -- We show both inequalities and use antisymmetry.
  apply le_antisymm
  · -- Show a ≤ b using the equivalence at x = b
    have : a ≤ b ↔ b ≤ b := h b hb
    exact this.mpr le_rfl
  · -- Show b ≤ a using the equivalence at x = a
    have : a ≤ a ↔ b ≤ a := h a ha
    exact this.mp le_rfl