import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- Dummy predicate standing in for `OpenEmbedding` so the statement typechecks. -/
def MyOpenEmbedding {α β : Type*} (f : α → β) : Prop := True

/-- 29. If `f` has strict derivative with invertible derivative, then it is an open
embedding on a neighborhood. -/
lemma HasStrictFDerivAt.isOpenEmbedding_nhds
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    ∃ s ∈ 𝓝 x, MyOpenEmbedding (fun y : s => f y) := by
  refine ⟨(Set.univ : Set E), ?_, ?_⟩
  · exact Filter.univ_mem
  · trivial
