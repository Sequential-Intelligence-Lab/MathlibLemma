import Mathlib

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- A nontrivial character has nontrivial restriction to any subgroup that is not contained
    in its kernel. -/
lemma MulChar.ne_one_on_subgroup
    {G : Type*} [CommGroup G]
    {R' : Type*} [CommRing R']
    (χ : MulChar G R') (H : Subgroup G)
    (hχ : χ ≠ 1)
    (hH : ∃ g : H, χ g ≠ 1) :
    (χ.comp H.subtype) ≠ 1 := by
  sorry