import Mathlib

universe u v

open CategoryTheory

/-- A natural transformation between two fiber functors on a Galois category that is
injective on each object is a monomorphism in the functor category. -/
lemma natTrans_mono_of_pointwise_injective
    {C : Type u} [Category C]
    [CategoryTheory.GaloisCategory C]
    (F G : C ⥤ FintypeCat)
    (η : F ⟶ G)
    (hη : ∀ X, Function.Injective (η.app X)) :
    CategoryTheory.Mono η := by
  sorry