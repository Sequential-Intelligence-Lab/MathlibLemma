import Mathlib

open Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {H : Type*} [TopologicalSpace H]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable (I : ModelWithCorners 𝕜 E H)
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {H' : Type*} [TopologicalSpace H']
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable (I' : ModelWithCorners 𝕜 E' H')
variable {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']

/-! ### Basic properties of `IsManifold` and `minSmoothness` -/

/-- A placeholder for the pullback of a vector field along `f` on a set `s`. -/
noncomputable
def VectorFieldPullbackWithin
    (f  : M → M') (V : ∀ x' : M', TangentSpace I' x') (s : Set M) :
    ∀ x : M, TangentSpace I x :=
  fun x =>
    Classical.choice
      (by
        have : Nonempty (TangentSpace I x) := inferInstance
        simpa using this)

/-- Pointwise scalar multiplication commutes with `VectorFieldPullbackWithin`. -/
lemma VectorField.pullbackWithin_pointwise_smul
    {f : M → M'} {s : Set M} {φ : M' → 𝕜}
    {V : ∀ x' : M', TangentSpace I' x'} :
    VectorFieldPullbackWithin (I := I) (I' := I') f (fun x' => φ x' • V x') s
      = fun x => φ (f x) • VectorFieldPullbackWithin (I := I) (I' := I') f V s x := by
  sorry