import Mathlib

open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {H : Type*} [TopologicalSpace H]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {I : ModelWithCorners 𝕜 E H}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {H' : Type*} [TopologicalSpace H']
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {I' : ModelWithCorners 𝕜 E' H'}
variable {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']
variable {H'' : Type*} [TopologicalSpace H'']
variable {E'' : Type*} [NormedAddCommGroup E''] [NormedSpace 𝕜 E'']
variable {I'' : ModelWithCorners 𝕜 E'' H''}
variable {M'' : Type*} [TopologicalSpace M''] [ChartedSpace H'' M'']
variable {s t u : Set M} {s' t' : Set M'} {x y z : M} {x' : M'}
variable {f g h : M → M'}
variable {V W : ∀ x : M, TangentSpace I x}
variable {V' W' : ∀ x : M', TangentSpace I' x}
variable {n m : WithTop ℕ∞}

/-! ### Basic properties of `IsManifold` and `minSmoothness` -/
lemma IsManifold.of_le_of_eq
    {n₁ n₂ : WithTop ℕ∞}
    (h₁ : IsManifold I n₁ M) (h₂ : n₂ ≤ n₁) (h₃ : n₁ = n₂) :
    IsManifold I n₂ M := by
  -- Use the equality `h₃` to rewrite the target and close with `h₁`.
  simpa [h₃] using h₁