import Mathlib

open CategoryTheory

lemma groupHomology.δ0_apply_zero
    {k G : Type _} [CommRing k] [Group G]
    {X : ShortComplex (Rep k G)}
    (hX : ShortComplex.ShortExact X) :
    groupHomology.δ hX 1 0 rfl 0 = 0 := by
  simpa using (groupHomology.δ hX 1 0 rfl).map_zero