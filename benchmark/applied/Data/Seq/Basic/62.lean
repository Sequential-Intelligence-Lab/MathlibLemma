import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.fold_eq_of_forall_eq
    (s t : Seq α) (init : β) (f : β → α → β)
    (h : ∀ n, s.get? n = t.get? n) :
    s.fold init f = t.fold init f := by
  sorry

/-
Update / set
-/
