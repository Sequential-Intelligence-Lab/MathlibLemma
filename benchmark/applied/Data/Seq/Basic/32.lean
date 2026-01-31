import Mathlib

variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length'_append
    (s t : Seq α) [Decidable s.Terminates] :
    (Seq.append s t).length' =
      if s.Terminates then s.length' + t.length'
      else ⊤ := by
  sorry