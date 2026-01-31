import Mathlib

open CategoryTheory

variable (V : Type*) [Category V]
variable {G : Type*} [Group G]

lemma Action.ρ_isIso_of_group (A : Action V G) (g : G) :
    IsIso (A.ρ g) := by
  sorry