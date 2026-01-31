import Mathlib

/-- A very simple stand‑in for the real `Basis` type.
    We only need *some* type depending on `ι`, `R`, and `M`. -/
structure MyBasis (ι R M : Type*) : Type :=
  dummy : Unit

variable {ι : Type*} {R M : Type*} [Semiring R]
  [AddCommMonoid M] [Module R M] [Fintype ι]

namespace MyBasis

/-- A placeholder for a `toMatrixEquiv`-like map.
    We only care that it has type `ι → ι` so that the lemma is well‑typed. -/
@[simp] abbrev toMatrixEquiv (e : MyBasis ι R M) : ι → ι :=
  fun i => i

lemma toMatrixEquiv_injective (e : MyBasis ι R M) :
  Function.Injective (toMatrixEquiv e) := by
  sorry

end MyBasis