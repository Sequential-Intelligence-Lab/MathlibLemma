import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.Pairwise_take
    {R : α → α → Prop} {s : Seq α}
    (h : s.Pairwise R) (n : ℕ) :
    (s.take n).Pairwise R := by
  sorry

/-
Interactions with List, Multiset, Finset, Set
-/
