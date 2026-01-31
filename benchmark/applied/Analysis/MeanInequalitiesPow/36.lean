import Mathlib

lemma Real.convex_on_pow_of_even (n : ℕ) (hn : Even n) :
    ConvexOn ℝ (Set.univ : Set ℝ) (fun x => x ^ n) := by
  sorry