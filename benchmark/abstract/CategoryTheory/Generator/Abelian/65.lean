import Mathlib

open CategoryTheory
open CategoryTheory.Limits

/-- In an abelian category, any projective object is a direct summand of a coproduct
of copies of a projective separator. -/
lemma projective_is_summand_of_separator_sigma
  {C : Type*} [Category C] [Abelian C] [HasCoproducts C]
  (G : C) [Projective G] (hG : IsSeparator G)
  (X : C) [Projective X] :
  ∃ (ι : Type*) (f : (∐ fun _ : ι => G) ⟶ X) (g : X ⟶ (∐ fun _ : ι => G)),
    g ≫ f = 𝟙 X := by
  sorry