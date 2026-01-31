import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.nil_ne_cons (x : α) (s : Seq α) :
    Seq.nil ≠ Seq.cons x s := by
  sorry
