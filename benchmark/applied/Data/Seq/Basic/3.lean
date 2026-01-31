import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length'_eq_iff_same_values
    {s t : Seq α} (hs : s.Terminates) (ht : t.Terminates)
    (h : ∀ n, s.get? n = t.get? n) :
    s.length hs = t.length ht := by
  sorry
