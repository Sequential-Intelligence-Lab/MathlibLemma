import Mathlib

open Filter Set Topology

/-- 63. Inverse function theorem for functions from `𝕜` to `𝕜`: local monotonicity. -/
lemma HasStrictDerivAt.localStrictMono
    {𝕜 : Type*} [NontriviallyNormedField 𝕜] [Preorder 𝕜]
    {f : 𝕜 → 𝕜} {f' x : 𝕜}
    (hf : HasStrictDerivAt f f' x) (hpos : 0 < f') :
    ∃ s ∈ 𝓝 x, StrictMonoOn f s := by
  sorry