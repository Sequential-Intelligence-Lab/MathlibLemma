import Mathlib

open scoped Filter
open Filter Asymptotics

/-- An asymptotic equivalence near `0` for the normalized Gamma kernel. -/
lemma Real.isEquivalent_near_zero_rpow_exp
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    (fun x : ℝ => x ^ q * Real.exp (-(x ^ p)))
      ~[nhdsWithin 0 {x : ℝ | x > 0}]
      (fun x : ℝ => x ^ q) := by
  sorry