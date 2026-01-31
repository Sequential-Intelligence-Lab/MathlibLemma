import Mathlib

open CategoryTheory
open scoped CategoryTheory

universe u

/-- A morphism between objects in a Galois category that is bijective on fibers
is an isomorphism.

(Here we assume the ambient category `C` is connected, rather than the individual
objects `X` and `Y`.) -/
lemma isIso_of_bijective_fiber_on_connected
    {C : Type u} [Category C]
    [CategoryTheory.GaloisCategory C]
    [CategoryTheory.IsConnected C]
    (φ : C ⥤ FintypeCat)
    {X Y : C}
    (f : X ⟶ Y)
    (hbij : Function.Bijective (fun x : φ.obj X => (φ.map f) x)) :
    IsIso f := by
  sorry