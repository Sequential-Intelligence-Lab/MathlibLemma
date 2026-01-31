import Mathlib

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- If `χ` is a character on `R × S`, and `χ₁` is a character on `R` obtained by restricting `χ`
    to the first factor (in some unspecified way), then the order of `χ₁` divides the order of `χ`. -/
lemma MulChar.orderOf_fst_divides
    {R S : Type*} [CommMonoid R] [CommMonoid S]
    {R' : Type*} [CommMonoidWithZero R']
    (χ : MulChar (R × S) R') (χ₁ : MulChar R R') :
    orderOf χ₁ ∣ orderOf χ := by
  sorry