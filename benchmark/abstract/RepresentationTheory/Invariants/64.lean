import Mathlib

universe u v w

variable {k : Type u} {G : Type u} {H : Type v} {V W X : Type w}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [CommRing k] [Group G] [Fintype G]
variable [Invertible (Fintype.card G : k)]

open MonoidAlgebra
open GroupAlgebra
open CategoryTheory

lemma Rep.invariantsFunctor_map_mono
    {X Y : Rep k G} (f : X ⟶ Y) [Mono f] :
    Mono ((Rep.invariantsFunctor k G).map f) := by
  sorry

end Average