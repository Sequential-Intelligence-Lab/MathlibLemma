import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.zipWith_comm
    (f : α → β → γ) (g : β → α → γ)
    (hcomm : ∀ a b, f a b = g b a)
    (s : Seq α) (t : Seq β) :
    Seq.zipWith f s t = Seq.zipWith g t s := by
  sorry
