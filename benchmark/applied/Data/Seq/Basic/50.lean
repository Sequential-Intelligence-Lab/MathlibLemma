import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.enum_nodup (s : Seq α) :
    (Seq.enum s).Pairwise (fun a b => a.1 < b.1) := by
  sorry

/-
Join (Seq and Seq1)
-/
