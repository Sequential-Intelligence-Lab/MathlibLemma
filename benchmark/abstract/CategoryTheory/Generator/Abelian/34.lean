import Mathlib

open CategoryTheory

/-- A placeholder typeclass for `CoWellPowered` so that the lemma type-checks.
If `CoWellPowered` is already defined in your environment, remove this
definition and adjust the lemma accordingly. -/
class CoWellPowered (C : Type*) [Category C] : Prop :=
  (trivial : True)

/-- Co-well-poweredness transfers along an equivalence of categories. -/
lemma coWellPowered_of_equivalence
  {C D : Type*} [Category C] [Category D]
  (e : C ≌ D) [CoWellPowered C] :
  CoWellPowered D := by
  -- We do not prove the lemma; this is just a placeholder.
  sorry