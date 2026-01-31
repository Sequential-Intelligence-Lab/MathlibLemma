import Mathlib

lemma derivWithin_unique_of_convex {f : ℝ → ℝ} {D : Set ℝ} {x : ℝ}
    (hD : Convex ℝ D)
    (hx : x ∈ interior D)
    {d1 d2 : ℝ}
    (h1 : HasDerivWithinAt f d1 D x)
    (h2 : HasDerivWithinAt f d2 D x) :
    d1 = d2 := by
  sorry
