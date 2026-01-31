import Mathlib

open CategoryTheory

lemma Action.Hom.congr_hom
    {V : Type*} [Category V] {G : Type*} [Monoid G]
    {M N : Action V G} {f g : M ⟶ N}
    (h : f.hom = g.hom) : f = g := by
  ext x
  simpa [h]