import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma nhdsWithin_Icc_eq_nhdsWithin_Ioi_of_lt
    {a b x : ℝ} (hax : a < x) (hxb : x ≤ b) :
    nhdsWithin x (Set.Icc a b) = nhdsWithin x (Set.Ioi a) := by
  sorry