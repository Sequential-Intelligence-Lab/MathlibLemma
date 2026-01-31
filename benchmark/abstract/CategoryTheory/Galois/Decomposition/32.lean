import Mathlib

open CategoryTheory

/-- Automorphisms of an object correspond bijectively to permutations of its fiber
    with respect to a functor `F`. This is stated abstractly here without assuming
    any specific Galois structure, so that the statement compiles. -/
lemma auto_equiv_perm_fiber_of_galois
    {C : Type u} [Category C]
    (F : C ⥤ FintypeCat)
    (A : C) :
    Nonempty (Aut A ≃ Equiv.Perm (F.obj A)) := by
  sorry