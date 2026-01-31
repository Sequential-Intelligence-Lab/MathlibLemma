import Mathlib

theorem Finset.max'_eq_of_mem {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty)
    {a b : α} (ha : a ∈ s) (hb : b ∈ s) (hle : ∀ x ∈ s, x ≤ a ↔ x ≤ b) :
    s.max' hs = a ↔ s.max' hs = b := by
  -- First show a = b from the pointwise equivalence of ≤ a and ≤ b on s
  have h1 : a ≤ b := (hle a ha).mp le_rfl
  have h2 : b ≤ a := (hle b hb).mpr le_rfl
  have h_ab : a = b := le_antisymm h1 h2
  -- Now rewrite using a = b
  simpa [h_ab]