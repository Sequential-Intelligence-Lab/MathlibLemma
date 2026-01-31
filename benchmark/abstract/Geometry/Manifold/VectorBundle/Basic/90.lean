import Mathlib

open scoped Manifold Bundle Topology ContDiff

universe uK uM uF

variable {𝕜 : Type uK} {M : Type uM} {F : Type uF}
variable {n : WithTop ℕ∞}

lemma Bundle.contMDiff_pullback_trivial_iso
    [NontriviallyNormedField 𝕜]
    [NormedAddCommGroup M] [NormedSpace 𝕜 M]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f : M → M) (hf : ContMDiff (𝓘(𝕜, M)) (𝓘(𝕜, M)) n f) :
    ContMDiff ((𝓘(𝕜, M)).prod (𝓘(𝕜, F)))
      ((𝓘(𝕜, M)).prod (𝓘(𝕜, F))) n
      (fun p : M × F => p) := by
  sorry