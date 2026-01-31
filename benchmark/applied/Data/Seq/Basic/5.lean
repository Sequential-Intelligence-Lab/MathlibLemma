import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length_eq_length_iff
    {s t : Seq α} {hs : s.Terminates} {ht : t.Terminates} :
    s.length hs = t.length ht ↔ s.length' = t.length' := by
  sorry
