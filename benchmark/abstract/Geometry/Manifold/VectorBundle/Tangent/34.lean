import Mathlib

-- We work in a context where `𝕜` is a nontrivially normed field and `E` is a normed space.
variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {H : Type*} [TopologicalSpace H]
variable {I : ModelWithCorners 𝕜 E H}
variable {n : WithTop ℕ∞}

/-! ### Extra lemmas about `contDiffOn_fderiv_coord_change` and coordinate changes -/

/-- A placeholder lemma about smoothness of a coordinate-change-like map.
    The statement is made self-contained and compilable; the proof is omitted. -/
lemma contMDiff_tangentBundleModelSpaceHomeomorph_symm_iff :
    ContMDiff (I.prod (modelWithCornersSelf 𝕜 E)) I n
      (fun p : H × E => p.1) ↔
    ContMDiff ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E))
      (modelWithCornersSelf 𝕜 E) n
      (fun p : E × E => p.1) := by
  sorry