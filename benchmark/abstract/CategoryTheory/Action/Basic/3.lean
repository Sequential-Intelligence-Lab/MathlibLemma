import Mathlib

open CategoryTheory

lemma Action.trivial_ρ_eq_one
    {V : Type*} [Category V] [MonoidalCategory V]
    (G : Type*) [Monoid G] (X : V) :
    (Action.trivial (V := V) G X).ρ = 1 := by
  sorry