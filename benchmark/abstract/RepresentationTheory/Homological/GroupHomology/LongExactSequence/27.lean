import Mathlib

open CategoryTheory

lemma groupHomology.mapShortComplex₂_exact_0
    {k G : Type _} [CommRing k] [Group G]
    {X : ShortComplex (Rep k G)} (i : ℕ) :
    (groupHomology.mapShortComplex₂ X i).Exact := by
  sorry