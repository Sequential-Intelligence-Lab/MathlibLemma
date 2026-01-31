import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.mem_append_right_iff
    {s t : Seq α} {a : α}
    (hnot : a ∉ s) :
    a ∈ Seq.append s t ↔ a ∈ t := by
  sorry
