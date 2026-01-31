import Mathlib

open Filter

lemma deriv_eq_zero_of_locally_constant
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {f : 𝕜 → 𝕜}
    (hconst : ∀ x, ∃ u ∈ nhds x, ∀ y ∈ u, f y = f x) :
    deriv f = fun _ => 0 := by
  sorry