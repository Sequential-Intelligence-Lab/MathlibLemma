import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.set_eq_of_get?_eq
    {s : Seq α} {n : ℕ} {x : α}
    (h : s.get? n = some x) :
    s.set n x = s := by
  sorry

/-
All
-/
