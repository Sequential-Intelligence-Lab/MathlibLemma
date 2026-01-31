import Mathlib

lemma derivWithin_eq_zero_of_locally_constant
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {f : 𝕜 → 𝕜} {s : Set 𝕜}
    (hconst : ∀ x ∈ s, ∃ u ∈ nhdsWithin x s, ∀ y ∈ u, f y = f x) :
    ∀ x ∈ s, derivWithin f s x = 0 := by
  sorry