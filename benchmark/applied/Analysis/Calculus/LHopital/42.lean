import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma nhdsWithin_Icc_eq_nhdsWithin_Ioo_of_mem
    {a b x : ℝ} (hx : x ∈ Set.Ioo a b) :
    nhdsWithin x (Set.Icc a b) = nhdsWithin x (Set.Ioo a b) := by
  sorry