import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Seq.length_take_eq_min
    (s : List α) (n : ℕ) :
    (s.take n).length = min s.length n := by
  -- Consider two cases based on the relationship between `n` and `s.length`.
  cases' le_total n s.length with h h <;> simp_all [List.length_take, Nat.min_eq_left, Nat.min_eq_right]
  -- Case 1: `n ≤ s.length`
  -- In this case, the length of `s.take n` is `n`, which is the minimum of `s.length` and `n`.
  <;> linarith
  -- Case 2: `n > s.length`
  -- Here, the length of `s.take n` is `s.length`, which is the minimum of `s.length` and `n`.
  <;> linarith