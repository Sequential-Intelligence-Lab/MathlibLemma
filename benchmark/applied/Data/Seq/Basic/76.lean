import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.Pairwise.zip_left
    {R : α → α → Prop} {s : Seq α} {t : Seq β}
    (h : s.Pairwise R) :
    (Seq.zip s t).Pairwise (fun a b => R a.1 b.1) := by
  sorry
