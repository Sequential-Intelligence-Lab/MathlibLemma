import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma nhdsWithin_Ioc_eq_nhdsWithin_Icc_of_mem
    {a b x : ℝ} (hx : x ∈ Set.Ioc a b) (hx' : x ≠ a) :
    nhdsWithin x (Set.Ioc a b) = nhdsWithin x (Set.Icc a b) := by
  sorry