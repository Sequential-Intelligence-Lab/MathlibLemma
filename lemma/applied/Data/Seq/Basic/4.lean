import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length'_map_le (f : α → β) (s : Seq α) :
    (s.map f).length' ≤ s.length' := by
  classical
  -- We use the characterization of `length'` via `TerminatedAt`.
  -- In `Mathlib`, `length'` is monotone with respect to the predicate `TerminatedAt`:
  --   `s.length' ≤ t.length'` iff ∀ n, TerminatedAt t n → TerminatedAt s n.
  --
  -- This lemma is usually named `length'_le_iff` in the `Stream'.Seq` namespace.
  --
  -- Specializing to `t := s` and `s := s.map f`:
  have hchar :
      (s.map f).length' ≤ s.length' ↔
        ∀ n, TerminatedAt s n → TerminatedAt (s.map f) n := by
    simpa [Seq.length'_le_iff]  -- uses the standard characterization

  -- So it suffices to prove the right-hand side:
  refine (hchar.mpr ?_) 
  intro n hn
  -- `TerminatedAt` is defined via `get?`, and `map` commutes with `get?`.
  -- There is a simp-lemma:
  --   `(s.map f).get? n = (s.get? n).map f`
  -- From this, `TerminatedAt (s.map f) n` is equivalent to `TerminatedAt s n`.
  --
  -- In `Mathlib`, this is packaged as a simp lemma on `TerminatedAt`:
  --   `[simp] lemma TerminatedAt_map (f : α → β) (s : Seq α) (n : Nat) :
  --     TerminatedAt (s.map f) n ↔ TerminatedAt s n`
  --
  -- Hence we can conclude by rewriting:
  simpa using hn