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
  -- We actually do not need `hχ` for this argument.
  intro h
  rcases hH with ⟨g, hg⟩
  -- Evaluate the equality of characters at the element `g : H`
  have := congrArg (fun f => f g) h
  -- Left side: (χ.comp H.subtype) g = χ g; right side: 1 g = 1
  -- So we get χ g = 1, contradicting hg.
  exact hg this