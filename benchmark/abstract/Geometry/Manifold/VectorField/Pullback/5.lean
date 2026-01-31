import Mathlib

-- We keep all the variables, just fixing the syntax of the typeclasses.
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
variable {f g h : M → M'} {V W : ∀ x : M, TangentSpace I x}
variable {V' W' : ∀ x : M', TangentSpace I' x}
variable {n m : WithTop ℕ∞}

/-! ### Basic properties of `IsManifold` and `minSmoothness` -/

open Manifold

lemma VectorField.mpullback_add'
    {f : M → M'} {V₁ V₂ : ∀ x : M', TangentSpace I' x} :
    VectorField.mpullback I I' f (V₁ + V₂)
      = VectorField.mpullback I I' f V₁
        + VectorField.mpullback I I' f V₂ := by
  sorry