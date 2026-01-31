import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.eq_nil_or_exists_cons (s : Seq α) :
    s = Seq.nil ∨ ∃ x s', s = Seq.cons x s' := by
  sorry
