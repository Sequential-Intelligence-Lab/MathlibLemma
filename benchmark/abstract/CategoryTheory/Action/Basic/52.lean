import Mathlib

open CategoryTheory

lemma Action.forget_mono_iff
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    {M N : Action V G} (f : M ⟶ N) :
    Mono f ↔ Mono f.hom := by
  sorry