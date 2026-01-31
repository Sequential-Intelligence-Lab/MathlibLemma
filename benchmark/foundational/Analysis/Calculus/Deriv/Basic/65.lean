import Mathlib

lemma derivWithin_of_eqOn_closure
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {f g : 𝕜 → 𝕜} {s : Set 𝕜} {x : 𝕜}
    (hfg : Set.EqOn f g (closure s))
    (hx : x ∈ s)
    (hf : DifferentiableWithinAt 𝕜 f s x)
    (hg : DifferentiableWithinAt 𝕜 g s x) :
    derivWithin f s x = derivWithin g s x := by
  sorry