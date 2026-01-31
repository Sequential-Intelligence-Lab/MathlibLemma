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

open scoped Manifold

-- Declare the manifold, model space, and model with corners
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {I : ModelWithCorners 𝕜 H M}

/-! ## Basic filter / topology lemmas -/
lemma VectorField.mlieBracket_linear_right
    {V W₁ W₂ : Π x : M, TangentSpace I x} {s : Set M} {x : M}
    (hV : MDifferentiableWithinAt I I.tangent (fun x ↦ (V x : TangentBundle I M)) s x)
    (hW₁ : MDifferentiableWithinAt I I.tangent (fun x ↦ (W₁ x : TangentBundle I M)) s x)
    (hW₂ : MDifferentiableWithinAt I I.tangent (fun x ↦ (W₂ x : TangentBundle I M)) s x)
    (hs : UniqueMDiffWithinAt I s x) :
    VectorField.mlieBracketWithin I V (W₁ + W₂) s x =
      VectorField.mlieBracketWithin I V W₁ s x +
      VectorField.mlieBracketWithin I V W₂ s x := by
  sorry