import Mathlib

open CategoryTheory

/-- A placeholder class for a pre-Galois category structure on `C`. -/
class MyPreGaloisCategory (C : Type*) [Category C] : Prop where
  dummy : True

/-- A placeholder class for a fiber functor. -/
class MyFiberFunctor {C : Type*} [Category C] (F : C ⥤ FintypeCat) : Prop where
  dummy : True

namespace MyPreGaloisCategory

/-- A placeholder type of automorphisms associated to a fiber functor. -/
@[nolint unusedArguments]
def Aut {C : Type*} [Category C] [MyPreGaloisCategory C]
    (F : C ⥤ FintypeCat) : Type _ :=
  ULift (ULift Bool)

/-- Give the placeholder automorphism type the discrete topology. -/
instance instTopologicalSpaceAut
    {C : Type*} [Category C] [MyPreGaloisCategory C]
    (F : C ⥤ FintypeCat) :
    TopologicalSpace (Aut F) :=
  ⊥

/-- In a pre-Galois category, the "fundamental group" attached to two fiber functors
    has homeomorphic automorphism groups (stub statement). -/
def IsFundamentalGroup.fiberFunctor_aut_homeo
    {C : Type*} [Category C] [MyPreGaloisCategory C]
    (F₁ F₂ : C ⥤ FintypeCat)
    [MyFiberFunctor F₁] [MyFiberFunctor F₂] :
    Nonempty (Homeomorph (Aut F₁) (Aut F₂)) :=
by
  sorry

end MyPreGaloisCategory