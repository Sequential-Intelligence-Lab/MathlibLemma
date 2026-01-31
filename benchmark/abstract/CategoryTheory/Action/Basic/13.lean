import Mathlib

open CategoryTheory

lemma Action.ρ_monoid_hom_injective
    {V : Type*} [Category V]
    {G : Type*} [Monoid G]
    (A : Action V G)
    (h : Function.Injective A.ρ) :
    Function.Injective A.ρ := by
  sorry