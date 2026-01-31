import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.zip_length'_eq_min
    (s : Seq α) (t : Seq β) :
    (Seq.zip s t).length' = min s.length' t.length' := by
  sorry
