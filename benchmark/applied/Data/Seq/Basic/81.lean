import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.nodup_toList_iff
    {s : Seq α} {hs : s.Terminates} :
    (Seq.toList s hs).Nodup ↔
      s.Pairwise (fun a b => a ≠ b) := by
  sorry
