import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.enum_length'_eq (s : Seq α) :
    (Seq.enum s).length' = s.length' := by
  sorry
