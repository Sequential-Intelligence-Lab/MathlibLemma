import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq1.map_bind
    (s : Seq1 α) (f : α → Seq1 β) (g : β → γ) :
    Seq1.map g (Seq1.bind s f) =
      Seq1.bind s (fun a => Seq1.map g (f a)) := by
  sorry
