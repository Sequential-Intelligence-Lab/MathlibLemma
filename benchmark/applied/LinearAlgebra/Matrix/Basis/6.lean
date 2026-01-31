import Mathlib

open scoped BigOperators

lemma Basis_toMatrix_injective_family
  {ι κ : Type*} {R M : Type*}
  [Fintype ι]
  [CommSemiring R]
  [AddCommMonoid M] [Module R M] :
  ∃ (f : (κ → M) → Matrix ι κ R), Function.Injective f := by
  classical
  -- You could e.g. take `f := fun v => Matrix.of fun i j => (Classical.choice sorry)`,
  -- but the user requested not to prove the lemma.
  sorry