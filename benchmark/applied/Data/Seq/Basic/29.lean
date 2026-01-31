import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.drop_take_le
    (s : Seq α) {n m : ℕ} (hmn : m ≤ n) :
    (s.take n).drop m = (s.drop m).take (n - m) := by
  sorry
