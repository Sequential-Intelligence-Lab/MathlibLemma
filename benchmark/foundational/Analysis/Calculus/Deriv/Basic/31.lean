import Mathlib

lemma deriv_div'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f g : 𝕜 → 𝕜) (x : 𝕜) (hx : g x ≠ 0) :
    deriv (fun y => f y / g y) x =
      (deriv f x * g x - f x * deriv g x) / (g x)^2 := by
  sorry
