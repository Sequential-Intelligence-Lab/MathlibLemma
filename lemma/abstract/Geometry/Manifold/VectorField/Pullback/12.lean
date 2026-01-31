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

/-- Pointwise scalar multiplication commutes with `VectorFieldPullbackWithin`.

  NOTE: With the current placeholder definition of `VectorFieldPullbackWithin`,
  this lemma is not provable in Lean nor true mathematically. It requires
  a genuine, linear pullback construction.
-/
lemma VectorField.pullbackWithin_pointwise_smul
    {f : M → M'} {s : Set M} {φ : M' → 𝕜}
    {V : ∀ x' : M', TangentSpace I' x'} :
    VectorFieldPullbackWithin (I := I) (I' := I') f (fun x' => φ x' • V x') s
      = fun x => φ (f x) • VectorFieldPullbackWithin (I := I) (I' := I') f V s x := by
  -- This is where one would use function extensionality and linearity properties
  -- of a *real* pullback. With the current placeholder, this cannot be proved.
  --
  -- Sketch (not valid for the current definition):
  --   ext x
  --   -- goal:
  --   --   VectorFieldPullbackWithin f (fun x' => φ x' • V x') s x
  --   --     = φ (f x) • VectorFieldPullbackWithin f V s x
  --   -- use linearity/compatibility lemma:
  --   --   exact VectorFieldPullbackWithin_pointwise_smul_at f φ V s x
  --
  -- But such a lemma cannot be derived, since VectorFieldPullbackWithin ignores V.
  sorry