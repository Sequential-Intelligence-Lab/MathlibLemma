import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.get?_eq_get?_of_prefix
    {s t : Seq α}
    (h : ∀ n x, s.get? n = some x → t.get? n = some x)
    {n} (ht : t.TerminatedAt n) :
    s.get? n = none := by
  sorry

/-
Take / Drop and length, get?
-/
