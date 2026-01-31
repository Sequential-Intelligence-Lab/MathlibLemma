import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.drop_of_ge_length'
    {s : Seq α} {n : ℕ}
    (h : s.length' ≤ n) :
    s.drop n = Seq.nil := by
  sorry
