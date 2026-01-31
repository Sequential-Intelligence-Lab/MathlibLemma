import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.all_of_all_take
    {s : Seq α} {p : α → Prop}
    (h : ∀ n, ∀ x ∈ s.take n, p x) :
    ∀ x ∈ s, p x := by
  sorry
