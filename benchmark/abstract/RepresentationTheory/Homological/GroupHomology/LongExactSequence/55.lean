import Mathlib

open scoped BigOperators
open CategoryTheory

-- We assume `groupHomology` is the usual construction landing in `ModuleCat k`.
-- The exact details are in mathlib; here we only need the types to line up.

lemma groupHomology.δ_strict_epi_of_middle_vanishing
    {k G : Type _} [CommRing k] [Group G]
    {X : ShortComplex (Rep k G)}
    (hX : X.ShortExact) (n : ℕ)
    (hmid : groupHomology X.X₂ n ≅ (⊥_ (ModuleCat k))) :
    Function.Surjective
      (groupHomology.δ hX (n + 1) n (by simp : n + 1 = n + 1)) := by
  sorry

lemma groupHomology.δ_strict_epi_of_middle_vanishing_trivial_mid
    {k G : Type _} [CommRing k] [Group G]
    {X : ShortComplex (Rep k G)}
    (hX : X.ShortExact) (n : ℕ)
    (hmid : True) :
    Function.Surjective
      (groupHomology.δ hX (n + 1) n (by simp : n + 1 = n + 1)) := by
  sorry