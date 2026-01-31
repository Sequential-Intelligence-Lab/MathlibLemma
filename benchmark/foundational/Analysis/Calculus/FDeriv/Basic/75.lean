import Mathlib

open scoped Topology

theorem hasFDerivWithinAt_iff_norm_sub_le
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E → F} {x : E} {s : Set E} {f' : E →L[𝕜] F} :
    HasFDerivWithinAt f f' s x ↔
      ∀ ε > 0,
        ∀ᶠ y in 𝓝[s] x, ‖f y - f x - f' (y - x)‖ ≤ ε * ‖y - x‖ := by
  sorry