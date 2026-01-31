import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [TopologicalSpace Y]
variable {Z : Type*} [TopologicalSpace Z]

variable {ι : Type*}

open Manifold

variable {M : Type*} [TopologicalSpace M]
variable {HModel : Type*} [NormedAddCommGroup HModel] [NormedSpace 𝕜 HModel]
variable (I : ModelWithCorners 𝕜 HModel M)

/-! ## Basic filter / topology lemmas -/
lemma VectorField.mlieBracketWithin_subsingleton
    [Subsingleton M]
    {V W : Π x : M, TangentSpace I x} {s : Set M} :
    VectorField.mlieBracketWithin I V W s = 0 := by
  sorry