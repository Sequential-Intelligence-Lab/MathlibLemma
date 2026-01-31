import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.ext_get? {s t : Seq α}
    (h : ∀ n, s.get? n = t.get? n) : s = t := by
  sorry
