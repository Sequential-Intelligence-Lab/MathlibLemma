import Mathlib

open Nat

lemma Real.concave_on_pow_of_odd_le_one
    (n : ℕ) (hn : Odd n) (hn1 : n ≤ 1) :
    ConcaveOn ℝ (Set.Icc (-1 : ℝ) 1) (fun x => x ^ n) := by
  sorry