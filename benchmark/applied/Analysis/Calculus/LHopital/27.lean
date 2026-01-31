import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/

open Set Filter

lemma nhdsWithin_Ioo_neBot {a b x : ℝ} (hx : x ∈ Set.Ioo a b) :
    (nhdsWithin x (Set.Ioo a b)).NeBot := by
  sorry