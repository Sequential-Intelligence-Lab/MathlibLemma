import Mathlib

universe u

lemma groupHomology_iCycles_injective
    {k G : Type u} [CommRing k] [Group G]
    (A : Rep k G) (n : ℕ)
    (iCycles : Type u → Type u) :
    Function.Injective (iCycles) := by
  sorry