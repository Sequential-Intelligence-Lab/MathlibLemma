import Mathlib

open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

variable {E E₁ : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable [NormedAddCommGroup E₁] [NormedSpace 𝕜 E₁]

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [TopologicalSpace Y]
variable {Z : Type*} [TopologicalSpace Z]

variable {ι : Type*}

/-! Additional manifold-related variables -/

variable {M : Type*} [TopologicalSpace M]
variable {I : ModelWithCorners 𝕜 E₁ M}

/-! ## Basic filter / topology lemmas -/
lemma VectorField.mapply_eq_mfderiv
    {V : Π x : M, TangentSpace I x} {x : M} (s : Set E₁)
    (hV :
      MDifferentiableAt I I.tangent
        (fun x ↦ (V x : TangentBundle I M)) x) :
    (V x) =
      (mfderiv I 𝓘(𝕜, E₁) (extChartAt I x) x).inverse
        (mfderivWithin 𝓘(𝕜, E₁) I (extChartAt I x).symm s
          (extChartAt I x x) (V x)) := by
  sorry