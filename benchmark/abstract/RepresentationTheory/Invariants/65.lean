import Mathlib

universe u

variable {k G : Type u}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [Field k] [Group G] [Fintype G] [Invertible (Fintype.card G : k)]

open MonoidAlgebra GroupAlgebra CategoryTheory

lemma Rep.invariantsFunctor_map_epi
    {X Y : Rep k G} (f : X ⟶ Y) [CategoryTheory.Epi f] :
    CategoryTheory.Epi ((Rep.invariantsFunctor k G).map f) := by
  sorry

end Average