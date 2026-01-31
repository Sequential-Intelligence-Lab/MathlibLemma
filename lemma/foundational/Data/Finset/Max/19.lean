import Mathlib

theorem Finset.min'_eq_of_mem {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty)
    {a b : α} (ha : a ∈ s) (hb : b ∈ s) (hle : ∀ x ∈ s, a ≤ x ↔ b ≤ x) :
    s.min' hs = a ↔ s.min' hs = b := by
  -- From the equivalence at x = a, get b ≤ a
  have hba : b ≤ a := (hle a ha).mp le_rfl
  -- From the equivalence at x = b, get a ≤ b
  have hab : a ≤ b := (hle b hb).mpr le_rfl
  -- Hence a = b by antisymmetry
  have h_eq : a = b := le_antisymm hab hba
  -- Rewrite using a = b
  simpa [h_eq]