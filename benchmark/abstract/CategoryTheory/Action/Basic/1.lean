import Mathlib

open CategoryTheory

lemma Action.ext_ρ_fun {V : Type*} [Category V] {G : Type*} [Monoid G]
    {A B : Action V G} (hV : A.V = B.V)
    (hρ :
      ∀ g : G,
        A.ρ g =
          eqToHom hV ≫
            B.ρ g ≫
              eqToHom hV.symm) :
    A = B := by
  sorry