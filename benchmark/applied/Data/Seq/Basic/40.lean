import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.append_injective_right
    (s : Seq α) (hs : s ≠ Seq.nil) :
    Function.Injective fun t : Seq α => Seq.append t s := by
  sorry

/-
Map, zipWith, zip, enum
-/
