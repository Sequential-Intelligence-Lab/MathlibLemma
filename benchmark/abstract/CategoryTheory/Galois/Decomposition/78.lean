import Mathlib

open CategoryTheory
open CategoryTheory.PreGaloisCategory

universe u v

/-- The group of automorphisms of a fiber functor on a Galois category acts faithfully on
every fiber. -/
lemma auto_fiberFunctor_acts_faithfully_on_all_fibers
    {C : Type u} [Category C]
    [GaloisCategory C]
    (φ : C ⥤ FintypeCat.{v})
    [FiberFunctor φ] :
    True := by
  sorry