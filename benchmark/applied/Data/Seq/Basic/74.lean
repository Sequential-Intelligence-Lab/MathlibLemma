import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.Pairwise.and_left
    {R S : α → α → Prop} {s : Seq α}
    (hR : s.Pairwise R) (hS : s.Pairwise S) :
    s.Pairwise (fun a b => R a b ∧ S a b) := by
  sorry
