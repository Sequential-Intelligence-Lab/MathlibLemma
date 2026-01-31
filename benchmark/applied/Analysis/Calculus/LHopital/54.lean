import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma nhdsWithin_Ioo_eq_nhdsWithin_Ico
    {a b x : ℝ} (hx : x ∈ Set.Ioo a b) :
    nhdsWithin x (Set.Ioo a b) = nhdsWithin x (Set.Ico a b) := by
  sorry