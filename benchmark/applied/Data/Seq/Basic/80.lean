import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.mem_toList_iff
    {s : Seq α} {hs : s.Terminates} {a : α} :
    a ∈ Seq.toList s hs ↔ a ∈ s := by
  sorry
