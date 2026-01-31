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

/-! ## Basic filter / topology lemmas -/
lemma ContDiffWithinAt.snd_fderiv_isSymm
    {f : E → F} {s : Set E} {x : E} {n : WithTop ℕ∞}
    (hf : ContDiffWithinAt 𝕜 n f s x) (hn : (2 : WithTop ℕ∞) ≤ n)
    (hxs : x ∈ closure (interior s)) (hs : UniqueDiffWithinAt 𝕜 s x) :
    IsSymmSndFDerivWithinAt 𝕜 f s x := by
  sorry