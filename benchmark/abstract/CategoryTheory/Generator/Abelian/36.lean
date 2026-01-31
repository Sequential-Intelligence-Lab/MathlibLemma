import Mathlib

open CategoryTheory
open CategoryTheory.Limits

/-- Existence of a projective separator implies enough projectives. -/
lemma enoughProjectives_of_projective_separator
  {C : Type*} [Category C] [Abelian C] [HasColimits C]
  (G : C) [Projective G] (hG : IsSeparator (C := C) G) :
  EnoughProjectives (C := C) := by
  sorry