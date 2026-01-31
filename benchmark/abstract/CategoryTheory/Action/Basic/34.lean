import Mathlib

open CategoryTheory

namespace MonCat

variable {V : Type u} [Category.{v} V]
variable {G : Type w} [Monoid G]

lemma Action.isIso_of_hom_isIso'
    {M N : Action V G} (f : M ⟶ N) (hf : IsIso f.hom) :
    IsIso f := by
  sorry

end MonCat