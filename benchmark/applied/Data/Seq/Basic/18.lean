import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.cons_injective (x : α) :
    Function.Injective fun s : Seq α => Seq.cons x s := by
  sorry

/-
Lemmas relating get? and equality
-/
