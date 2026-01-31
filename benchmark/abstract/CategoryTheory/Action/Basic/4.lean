import Mathlib

open CategoryTheory

universe u v w

variable (V : Type u) [Category.{v} V]
variable (G : Type w) [Monoid G]

lemma Action.trivial_unique
    (X : V) (A : Action V G)
    (hV : A.V = X)
    (hρ : ∀ g, A.ρ g = 𝟙 (A.V)) :
    A = Action.trivial (V := V) G A.V := by
  sorry