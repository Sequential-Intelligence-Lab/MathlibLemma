import Mathlib

universe u v

open CategoryTheory

/-- In a Galois category, a morphism with injective fiber map is mono. -/
lemma FiberFunctor.mono_of_injective
    {C : Type u} [Category C]
    [PreGaloisCategory C]
    (F : C ⥤ FintypeCat.{v})
    [PreGaloisCategory.FiberFunctor F]
    {X Y : C} (f : X ⟶ Y)
    (hf :
      Function.Injective
        (fun x : (F.obj X : Type v) =>
          (F.map f) x)) :
    Mono f := by
  sorry