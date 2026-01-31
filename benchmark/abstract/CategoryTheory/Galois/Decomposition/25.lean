import Mathlib

universe u v

open CategoryTheory
open CategoryTheory.Limits

/-- The fiber of a pullback square in a Galois category is the fiber product of fibers. -/
lemma fiberFunctor_pullback_fiber_product
    {C : Type u} [Category.{v} C] [HasPullbacks C]
    [GaloisCategory C]
    (F : C ⥤ FintypeCat.{v})
    {X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z) :
    Nonempty
      ((F.obj (pullback f g)) ≃
        { p : F.obj X × F.obj Y // F.map f p.1 = F.map g p.2 }) := by
  sorry