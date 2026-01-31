import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.cons_ne_nil (x : α) (s : Seq α) :
    Seq.cons x s ≠ Seq.nil := by
  simpa using Stream'.Seq.cons_ne_nil (x := x) (s := s)