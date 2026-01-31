import Mathlib

variable {𝕜 : Type*}
variable [NontriviallyNormedField 𝕜]

variable {H : Type*}
variable [TopologicalSpace H]

variable {E : Type*}
variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]

variable {I : ModelWithCorners 𝕜 E H}

variable {M : Type*}
variable [TopologicalSpace M] [ChartedSpace H M]

variable {H' : Type*}
variable [TopologicalSpace H']

variable {E' : Type*}
variable [NormedAddCommGroup E'] [NormedSpace 𝕜 E']

variable {I' : ModelWithCorners 𝕜 E' H'}

variable {M' : Type*}
variable [TopologicalSpace M'] [ChartedSpace H' M']

variable {H'' : Type*}
variable [TopologicalSpace H'']

variable {E'' : Type*}
variable [NormedAddCommGroup E''] [NormedSpace 𝕜 E'']

variable {I'' : ModelWithCorners 𝕜 E'' H''}

variable {M'' : Type*}
variable [TopologicalSpace M''] [ChartedSpace H'' M'']

variable {s t u : Set M} {s' t' : Set M'}
variable {x y z : M} {x' : M'}
variable {f g h : M → M'}
variable {V W : ∀ x : M, TangentSpace I x}
variable {V' W' : ∀ x : M', TangentSpace I' x}
variable {n m : WithTop ℕ∞}

/-! ### Basic properties of `IsManifold` and `minSmoothness` -/
lemma VectorField.mpullback_comp_id_left
    (V : ∀ x : M, TangentSpace I x) :
    VectorField.mpullback I I (id : M → M) V = V := by
  -- stronger version with no `[simp]` tag
  sorry