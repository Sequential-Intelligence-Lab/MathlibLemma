import Mathlib

open Filter
open scoped Topology

lemma deriv_eq_zero_of_eventuallyEq_on_nhds
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {f g : 𝕜 → 𝕜} {x : 𝕜}
    (hfg : ∀ᶠ y in (𝓝 x), f y = g y)
    (hf : HasDerivAt f (0 : 𝕜) x) :
    HasDerivAt g (0 : 𝕜) x := by
  sorry