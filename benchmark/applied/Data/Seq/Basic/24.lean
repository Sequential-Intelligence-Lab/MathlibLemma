import Mathlib

variable {α β γ δ : Type _}

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length_take_eq_min
    (s : List α) (n : ℕ) :
    (s.take n).length = min s.length n := by
  sorry