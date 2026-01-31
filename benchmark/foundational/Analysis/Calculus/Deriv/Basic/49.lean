import Mathlib

lemma deriv_zero_iff_const_on_connected
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {s : Set 𝕜} (hs : IsConnected s) (hs' : IsOpen s)
    {f : 𝕜 → F}
    (hderiv : ∀ x ∈ s, derivWithin f s x = 0) :
    ∀ x ∈ s, ∀ y ∈ s, f x = f y := by
  sorry