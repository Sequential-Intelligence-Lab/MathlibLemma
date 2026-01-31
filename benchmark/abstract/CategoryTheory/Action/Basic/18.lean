import Mathlib

-- Action.Hom lemmas

open CategoryTheory

lemma Action.Hom.comp_assoc {V : Type*} [Category V]
    {G : Type*} [Monoid G] {M N K L : Action V G}
    (f : M ⟶ N) (g : N ⟶ K) (h : K ⟶ L) :
    (f ≫ g) ≫ h = f ≫ (g ≫ h) := by
  sorry