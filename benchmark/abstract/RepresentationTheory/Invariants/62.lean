import Mathlib

universe u v w u₁

variable {k : Type u} {G H : Type v} {V W X : Type w}

/-! ## Lemmas about `GroupAlgebra.average` -/

section Average

variable [CommRing k] [Group G] [Fintype G]
variable [Invertible (Fintype.card G : k)]

open MonoidAlgebra
open GroupAlgebra
open CategoryTheory
open CategoryTheory.Limits

-- We state this as an instance using the standard `PreservesLimits` typeclass.
instance Rep.trivialFunctor_preservesLimits
    {k' G' : Type u₁} [CommRing k'] [Group G'] [Fintype G'] :
    CategoryTheory.Limits.PreservesLimits (Rep.trivialFunctor k' G') := by
  sorry

end Average