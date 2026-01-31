import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

/-! Basic ambient variables for analysis / manifolds -/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [TopologicalSpace Y]
variable {Z : Type*} [TopologicalSpace Z]
variable {ι : Type*}

/-! Manifold-related ambient variables -/

open Manifold

variable {Hₘ : Type*} [TopologicalSpace Hₘ] [NormedAddCommGroup Hₘ] [NormedSpace 𝕜 Hₘ]
variable {Hₙ : Type*} [TopologicalSpace Hₙ] [NormedAddCommGroup Hₙ] [NormedSpace 𝕜 Hₙ]
variable {M : Type*} [TopologicalSpace M]
variable {N : Type*} [TopologicalSpace N]
variable {I : ModelWithCorners 𝕜 Hₘ M}
variable {J : ModelWithCorners 𝕜 Hₙ N}

/-! ## Basic filter / topology lemmas -/
lemma contMDiffWithinAt_const_of_subsingleton
    {n : ℕ∞} {s : Set M} {f : M → N}
    [Subsingleton N] (x : M) :
    ContMDiffWithinAt I J n f s x := by
  have h : f = Function.const M (f x) := funext fun m => Subsingleton.elim (f m) (f x)
  rw [h]
  apply contMDiffWithinAt_const

/-! ## Tangent bundles and vector fields -/

variable {E₁ : Type*} [NormedAddCommGroup E₁] [NormedSpace 𝕜 E₁]
variable {H₁ : Type*} [TopologicalSpace H₁] [NormedAddCommGroup H₁] [NormedSpace 𝕜 H₁]

variable {I' : ModelWithCorners 𝕜 E₁ H₁}

variable [IsManifold I 2 M]