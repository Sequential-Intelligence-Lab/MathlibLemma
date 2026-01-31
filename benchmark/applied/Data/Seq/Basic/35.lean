import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.get?_append_left
    (s t : Seq α) (n : ℕ)
    (h : n < s.length') :
    (Seq.append s t).get? n = s.get? n := by
  sorry
