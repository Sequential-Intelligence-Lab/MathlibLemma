import Mathlib

open CategoryTheory

lemma groupHomology_delta0_of_split_mono
    {k G : Type _} [CommRing k] [Group G]
    {X : ShortComplex (Rep k G)} (hX : X.ShortExact)
    (s : X.X₂ ⟶ X.X₁) (hs : X.f ≫ s = 𝟙 X.X₁) :
    groupHomology.δ hX 1 0 rfl = 0 := by
  sorry