import Mathlib

open CategoryTheory

universe u

/-- Given a Galois object representing the fiber of `X`, every fiber element is represented
by a unique morphism from that Galois object. -/
lemma unique_morphism_from_galois_for_fiber_element
    {C : Type u} [Category C]
    (F : C ⥤ FintypeCat)
    {X A : C}
    (a : F.obj A)
    (hA : Function.Bijective (fun (f : A ⟶ X) ↦ F.map f a))
    (x : F.obj X) :
    ∃! (f : A ⟶ X), F.map f a = x := by
  sorry