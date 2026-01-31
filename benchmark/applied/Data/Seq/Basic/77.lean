import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.Pairwise.zip_right
    {R : β → β → Prop} {s : Seq α} {t : Seq β}
    (h : t.Pairwise R) :
    (Seq.zip s t).Pairwise (fun a b => R a.2 b.2) := by
  sorry
