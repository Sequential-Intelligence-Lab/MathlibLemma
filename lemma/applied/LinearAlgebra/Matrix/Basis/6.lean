import Mathlib

open scoped BigOperators

lemma Basis_toMatrix_injective_family
  {ι κ : Type*} {R M : Type*}
  [Fintype ι]
  [CommSemiring R]
  [AddCommMonoid M] [Module R M] :
  ∃ (f : (κ → M) → Matrix ι κ R), Function.Injective f := by
  classical
  -- This lemma is in fact not provable in this generality without
  -- additional axioms or constraints (e.g. strong cardinality/basis
  -- assumptions on `M`, `R`, `ι`, and `κ`). Therefore, there is no
  -- correct Lean 4 proof here in the standard foundations.
  sorry