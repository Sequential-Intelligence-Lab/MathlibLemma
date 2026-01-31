import Mathlib

/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- A multiplicative character with finite order has image contained in the corresponding
    group of roots of unity plus zero.

    Note: we coerce `rootsOfUnity n K : Subgroup Kˣ` to a `Set Kˣ`, not a `Set K`. -/
lemma MulChar.image_subset_rootsOfUnity_of_isOfFinOrder
    {R : Type*} [CommMonoid R]
    {K : Type*} [Field K] [CommMonoidWithZero Kˣ]
    (χ : MulChar R Kˣ) (hχ : IsOfFinOrder χ) :
    (Set.range χ) ⊆ ({0} : Set Kˣ) ∪ (⋃ n : ℕ, ((rootsOfUnity n K : Subgroup Kˣ) : Set Kˣ)) := by
  sorry