import Mathlib

lemma deriv_eq_zero_of_subsingleton_domain
    {𝕜 : Type*} [NontriviallyNormedField 𝕜] [Subsingleton 𝕜]
    (f : 𝕜 → 𝕜) :
    deriv f = fun _ => 0 := by
  sorry
