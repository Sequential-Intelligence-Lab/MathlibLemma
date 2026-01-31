import Mathlib

open Submodule

variable (R : Type*) [CommRing R]
variable (M : Type*) [AddCommGroup M] [Module R M]

lemma LinearMap.trace_restrict_bot
    (f : (⊥ : Submodule R M) →ₗ[R] (⊥ : Submodule R M)) :
    LinearMap.trace R (⊥ : Submodule R M) f = 0 := by
  sorry