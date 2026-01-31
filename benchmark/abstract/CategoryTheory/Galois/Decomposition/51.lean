import Mathlib

open CategoryTheory

/-- If a morphism in a Galois category induces a surjection on every fiber functor, then
it is an epimorphism. -/
lemma epi_of_surjective_on_all_fiberFunctors
    {C : Type u} [Category C]
    [PreGaloisCategory C]
    {X Y : C} (f : X ⟶ Y)
    (h : ∀ (φ : C ⥤ FintypeCat)
        [PreGaloisCategory.FiberFunctor φ],
      Function.Surjective
        (fun x : φ.obj X => φ.map f x)) :
    Epi f := by
  sorry