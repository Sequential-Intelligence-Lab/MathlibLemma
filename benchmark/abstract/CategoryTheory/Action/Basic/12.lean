import Mathlib

open CategoryTheory

namespace CategoryTheory

namespace Action

lemma ρ_subsingleton {V : Type*} [Category V]
    {G : Type*} [Monoid G] [Subsingleton G] (A : Action V G) :
    ∀ g, A.ρ g = 𝟙 A.V := by
  sorry

end Action

end CategoryTheory