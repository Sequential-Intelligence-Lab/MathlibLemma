import Mathlib

open Submodule

variable (R : Type*) [CommRing R]
variable (M : Type*) [AddCommGroup M] [Module R M]

lemma LinearMap.trace_restrict_bot
    (f : (⊥ : Submodule R M) →ₗ[R] (⊥ : Submodule R M)) :
    LinearMap.trace R (⊥ : Submodule R M) f = 0 := by
  -- The space of linear maps on the zero submodule is a subsingleton
  have h : f = 0 := Subsingleton.elim _ _
  -- Use linearity of trace: trace(0) = 0, then rewrite using h
  simpa [h] using
    (LinearMap.map_zero (LinearMap.trace R (⊥ : Submodule R M)))