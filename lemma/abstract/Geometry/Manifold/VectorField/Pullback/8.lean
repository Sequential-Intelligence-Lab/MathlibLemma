import Mathlib

open Manifold

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

/-- Pullback preserves subtraction of vector fields (statement only, not proved). -/
lemma VectorField.mpullback_sub
    {f : M → M'} {V₁ V₂ : ∀ x : M', TangentSpace I' x} :
    VectorField.mpullback I I' f (fun x => V₁ x - V₂ x)
      = (fun x => VectorField.mpullback I I' f V₁ x
          - VectorField.mpullback I I' f V₂ x) := by
  funext x
  -- unfold the definition and use linearity (`map_sub`) of the underlying map
  simpa [VectorField.mpullback, map_sub]