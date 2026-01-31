import Mathlib

lemma CFC.exp_add_of_commute'
    {𝕜 A : Type*}
    [RCLike 𝕜]
    [NormedRing A] [StarRing A]
    [NormedAlgebra 𝕜 A]
    [ContinuousFunctionalCalculus 𝕜 A (fun _ : A => True)]
    (exp : A → A)
    {a b : A} (h : a * b = b * a) :
    exp (a + b) = exp b * exp a := by
  sorry