import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.TerminatedAt_append_right
    {s t : Seq α} {n : ℕ}
    (hs : s.Terminates) (ht : t.TerminatedAt n) :
    (Seq.append s t).TerminatedAt (s.length hs + n) := by
  sorry
