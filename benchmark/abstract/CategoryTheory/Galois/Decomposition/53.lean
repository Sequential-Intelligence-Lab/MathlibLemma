import Mathlib

open CategoryTheory

/-- A natural transformation between two functors to `FintypeCat` that is surjective
on each object is an epimorphism in the functor category.

(Here we omit any `GaloisCategory` / `FiberFunctor` structure assumptions to keep the
statement compilable.) -/
lemma natTrans_epi_of_pointwise_surjective
    {C : Type u} [Category C]
    (F G : C ⥤ FintypeCat)
    (η : F ⟶ G)
    (hη : ∀ X, Function.Surjective (η.app X)) :
    Epi η := by
  sorry