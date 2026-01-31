import Mathlib

universe u v

open CategoryTheory

/-- In a Galois category, a morphism with surjective fiber map is epi.

This lemma is stated in a general categorical setting; the Galois-category
and fiber-functor structures are not used in the type signature, only in
this description.
-/
lemma FiberFunctor.epi_of_surjective
    {C : Type u} [Category.{v} C]
    (F : C ⥤ FintypeCat.{v})
    {X Y : C} (f : X ⟶ Y)
    (hf : Function.Surjective (fun x =>
      (F.map f) x)) :
    Epi f := by
  sorry