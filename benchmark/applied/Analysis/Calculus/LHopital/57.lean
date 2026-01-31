import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma nhdsWithin_Icc_eq_nhdsWithin_interval
    {a b x : ℝ} (hx : x ∈ Set.Icc a b) :
    nhdsWithin x (Set.Icc a b) = nhdsWithin x (Set.uIcc a b) := by
  sorry

/-
  A few measure-theoretic lemmas about derivatives and ratios, for use with L'Hôpital.
-/