import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.take_drop_add
    (s : Seq α) (n m : ℕ) :
    (s.drop n).take m = (s.take (n + m)).drop n := by
  sorry
