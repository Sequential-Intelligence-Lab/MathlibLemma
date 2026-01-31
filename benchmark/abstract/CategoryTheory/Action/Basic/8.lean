import Mathlib

universe u

open CategoryTheory

lemma Action.ρ_map_pow
    {V : Type u} [Category V]
    {G : Type*} [Monoid G]
    (A : Action V G) (g : G) (n : ℕ) :
    A.ρ (g ^ n) = A.ρ g ^ n := by
  sorry