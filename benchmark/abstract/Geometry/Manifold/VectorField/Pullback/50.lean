import Mathlib

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
lemma VectorField.ext_tangentBundle
    {V W : ∀ x : M, TangentSpace I x}
    (h : (fun x => (V x : TangentBundle I M))
        = fun x => (W x : TangentBundle I M)) :
    V = W := by
  sorry