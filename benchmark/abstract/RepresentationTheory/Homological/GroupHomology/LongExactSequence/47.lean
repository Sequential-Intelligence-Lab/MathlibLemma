import Mathlib

open CategoryTheory
open CategoryTheory.Limits
open Algebra

lemma groupHomology.δ_isIso_of_strictExact_middle
    {k G : Type _} [CommRing k] [Group G]
    {X : CategoryTheory.ShortComplex (Rep k G)}
    (hX : CategoryTheory.ShortComplex.ShortExact X)
    (n : ℕ)
    (hmid0 : groupHomology X.X₂ (n + 1) ≅ ⊥_ (ModuleCat k))
    (hmid1 : groupHomology X.X₂ n ≅ ⊥_ (ModuleCat k)) :
    CategoryTheory.IsIso
      (groupHomology.δ hX (n + 1) n rfl) := by
  sorry