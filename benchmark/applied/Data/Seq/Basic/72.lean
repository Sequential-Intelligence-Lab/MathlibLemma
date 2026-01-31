import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.Pairwise.imp
    {R S : α → α → Prop} {s : Seq α}
    (hR : s.Pairwise R)
    (himp : ∀ ⦃a b⦄, R a b → S a b) :
    s.Pairwise S := by
  sorry
