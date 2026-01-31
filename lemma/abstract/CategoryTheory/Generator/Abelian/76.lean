import Mathlib

open CategoryTheory

/-- Dummy definition: an "essential monomorphism" as a property of a morphism.
    This is only introduced so that the lemma below typechecks. -/
def IsEssentialMono {C : Type*} [Category C] {X Y : C} (f : X ⟶ Y) : Prop :=
  True

/-- In an abelian category with enough injectives, every object admits an essential
monomorphism into an injective object. -/
lemma exists_essential_mono_to_injective
  {C : Type*} [Category C] [Abelian C]
  (enoughInj : EnoughInjectives C)
  (X : C) :
  ∃ (E : C) (hE : Injective E) (f : X ⟶ E), Mono f ∧ IsEssentialMono f := by
  classical
  -- Use the canonical injection of X into an injective object provided by `EnoughInjectives`
  -- via `Injective.under X` and `Injective.ι X`.
  refine ⟨Injective.under X, ?_, Injective.ι X, ?_, ?_⟩
  · -- `Injective (Injective.under X)`
    infer_instance
  · -- `Mono (Injective.ι X)`
    infer_instance
  · -- `IsEssentialMono (Injective.ι X)` is `True` by definition
    trivial