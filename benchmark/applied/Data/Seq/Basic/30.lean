import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.drop_add
    (s : Seq α) (m n : ℕ) :
    s.drop (m + n) = (s.drop m).drop n := by
  sorry
