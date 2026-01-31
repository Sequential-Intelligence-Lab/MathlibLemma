import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 10. Pulling back a subrepresentation along a linear isomorphism
lemma Representation.subrepresentation_congr
    {k G V W : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V] [AddCommMonoid W] [Module k W]
    (ρV : Representation k G V) (ρW : Representation k G W)
    (e : V ≃ₗ[k] W)
    (h : ∀ g, e ∘ₗ ρV g = ρW g ∘ₗ e)
    (U : Submodule k V)
    (hU : ∀ g, U ≤ U.comap (ρV g)) :
    ∃ U' : Submodule k W,
      (∀ g, U' ≤ U'.comap (ρW g)) ∧
      (U.map e = U') := by
  sorry
