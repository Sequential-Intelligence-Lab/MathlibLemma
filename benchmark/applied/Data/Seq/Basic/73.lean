import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.Pairwise_iff_forall
    {R : α → α → Prop} {s : Seq α} :
    s.Pairwise R ↔
      ∀ i j x y, i < j →
        s.get? i = some x →
        s.get? j = some y →
        R x y := by
  sorry
