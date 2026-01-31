import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length_le_of_all_terminatedAt
    {s : Seq α} {n : ℕ}
    (h : ∀ m, s.TerminatedAt m → m ≤ n) :
    ∀ hs : s.Terminates, s.length hs ≤ n := by
  sorry
