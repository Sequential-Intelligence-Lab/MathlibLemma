import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.mem_join_iff
    {S : Seq (Seq1 α)} {a : α} :
    a ∈ Seq.join S ↔ ∃ s ∈ S, a ∈ (Seq1.toSeq s) := by
  sorry
