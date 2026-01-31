import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.zipWith_assoc
    (f : α → β → γ → δ)
    (s : Seq α) (t : Seq β) (u : Seq γ) :
    Seq.zipWith (fun a bc => f a bc.1 bc.2) s (Seq.zip t u)
      = Seq.zipWith (fun ab c => f ab.1 ab.2 c) (Seq.zip s t) u := by
  sorry
