import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.cons_injective_left {x y : α} {s t : Seq α}
    (h : Seq.cons x s = Seq.cons y t) :
    x = y := by
  sorry
