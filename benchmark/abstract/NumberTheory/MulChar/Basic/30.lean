import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators
/-- Two quadratic characters with the same kernel coincide when the codomain is an integral
    domain of characteristic not `2`. -/
lemma MulChar.IsQuadratic.eq_of_ker_eq
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommRing R'] [IsDomain R']
    [Nontrivial R'] (hchar : ringChar R' ≠ 2)
    (χ ψ : MulChar R R') (hχ : χ.IsQuadratic) (hψ : ψ.IsQuadratic)
    (hk : {a : R | χ a = 1} = {a : R | ψ a = 1}) :
    χ = ψ := by
  sorry
