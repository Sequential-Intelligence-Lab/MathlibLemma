import Mathlib

open scoped Manifold Bundle Topology ContDiff

-- 34. Smoothness of trivial bundle equivalence with product manifold
lemma Bundle.Trivial.contMDiff_equivTotalSpaceProd
    {𝕜 B F EB HB : Type*}
    [NontriviallyNormedField 𝕜]
    [TopologicalSpace B]
    [NormedAddCommGroup EB] [NormedSpace 𝕜 EB] [TopologicalSpace EB]
    [TopologicalSpace HB]
    (IB : ModelWithCorners 𝕜 EB HB)
    [ChartedSpace HB B]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {n : WithTop ℕ∞} :
    ContMDiff (IB.prod (𝓘(𝕜, F))) (IB.prod (𝓘(𝕜, F))) n
      (fun p : B × F => p) := by
  sorry