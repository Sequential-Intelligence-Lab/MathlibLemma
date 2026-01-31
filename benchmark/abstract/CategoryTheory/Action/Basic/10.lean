import Mathlib

open CategoryTheory

universe v u

namespace CategoryTheory

variable {C : Type v} [Category C]
variable {D : Type u} [Category D]

/-- Pointwise characterization of equality of natural transformations. -/
lemma NatTrans.eq_iff_app_eq
    {F G : C ⥤ D} {η θ : F ⟶ G} :
    η = θ ↔ ∀ X : C, η.app X = θ.app X := by
  sorry

end CategoryTheory