import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.get?_take_lt
    (s : Seq α) (n m : ℕ) (h : m < n) :
    (s.take n)[m]? = s.get? m := by
  -- By definition, `(s.take n)[m]?` is `if m < n then s.get? m else none`,
  -- so under `h : m < n` this simplifies to `s.get? m`.
  simp [Seq.take, h]