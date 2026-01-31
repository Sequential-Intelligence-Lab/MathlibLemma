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

lemma VectorField.mpullbackWithin_comp_of_left'
    {g : M' → M''} {f : M → M'} {V : ∀ x : M'', TangentSpace I'' x}
    {s : Set M} {t : Set M'} {x : M}
    (hf : MDifferentiableWithinAt I I' f s x)
    (hg : MDifferentiableWithinAt I' I'' g t (f x))
    (hmap : Set.MapsTo f s t)
    (hu : UniqueMDiffWithinAt I s x)
    (hinv : (mfderivWithin I' I'' g t (f x)).IsInvertible) :
    VectorField.mpullbackWithin I I'' (g ∘ f) V s x
      = VectorField.mpullbackWithin I I' f
          (VectorField.mpullbackWithin I' I'' g V t) s x := by
  sorry