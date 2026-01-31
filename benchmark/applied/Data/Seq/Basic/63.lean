import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.update_id
    (s : Seq α) (n : ℕ) :
    s.update n (fun x => x) = s := by
  sorry
