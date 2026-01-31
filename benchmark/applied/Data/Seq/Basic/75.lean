import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.Pairwise.and_right
    {R S : α → α → Prop} {s : Seq α}
    (hR : s.Pairwise (fun a b => R a b ∧ S a b)) :
    s.Pairwise R := by
  sorry
