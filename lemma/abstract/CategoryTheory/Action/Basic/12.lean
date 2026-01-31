import Mathlib

open CategoryTheory

namespace CategoryTheory

namespace Action

lemma ρ_subsingleton {V : Type*} [Category V]
    {G : Type*} [Monoid G] [Subsingleton G] (A : Action V G) :
    ∀ g, A.ρ g = 𝟙 A.V := by
  intro g
  have hg : g = 1 := Subsingleton.elim _ _
  -- use the fact that ρ is a monoid hom, so ρ 1 = 1 = 𝟙 A.V
  simpa [hg] using A.ρ.map_one

end Action

end CategoryTheory