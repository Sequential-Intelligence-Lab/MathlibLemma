import Mathlib

lemma deriv_eq_zero_on_open_of_derivWithin_eq_zero_on_open
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {f : 𝕜 → 𝕜} {s : Set 𝕜}
    (hs : IsOpen s) (hderiv : ∀ x ∈ s, derivWithin f s x = 0) :
    ∀ x ∈ s, deriv f x = 0 := by
  sorry
