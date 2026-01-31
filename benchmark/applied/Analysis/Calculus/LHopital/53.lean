import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma nhdsWithin_Ioo_eq_nhdsWithin_Ioc
    {a b x : ℝ} (hx : x ∈ Set.Ioo a b) :
    nhdsWithin x (Set.Ioo a b) = nhdsWithin x (Set.Ioc a b) := by
  sorry