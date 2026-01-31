import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/

/-- Auxiliary lemma with `Nat.succ` instead of `+ 1` for the upper bound. -/
lemma Seq.take_succ_subset_take_succ
    (s : Seq α) (n : ℕ) :
    ∀ x ∈ s.take n, x ∈ s.take (Nat.succ n) := by
  induction' n with n ih generalizing s
  · -- Base case: n = 0
    intro x hx
    -- `s.take 0 = []`, so there is no such `x`
    have : False := by
      simpa [Seq.take] using hx
    exact this.elim
  · -- Inductive step: assume the lemma for `n`, prove for `n.succ`
    intro x hx
    -- Analyze `s.destruct`
    cases h : s.destruct with
    | none =>
        -- Empty sequence: `take (n.succ)` is `[]`, so `hx` is impossible
        have : False := by
          simpa [Seq.take, h] using hx
        exact this.elim
    | some pr =>
        rcases pr with ⟨hd, tl⟩
        -- Simplify `hx` using the definition of `take`
        have hx' : x = hd ∨ x ∈ tl.take n := by
          simpa [Seq.take, h] using hx
        -- Goal: `x ∈ s.take (Nat.succ (Nat.succ n))`
        -- After simplification, this is `x = hd ∨ x ∈ tl.take (Nat.succ n)`
        rcases hx' with hx' | hx'
        · -- Case: `x` is the head
          have : x = hd ∨ x ∈ tl.take (Nat.succ n) := Or.inl hx'
          simpa [Seq.take, h] using this
        · -- Case: `x` is in the tail part
          -- Use the induction hypothesis on the tail `tl`
          have hx'' : x ∈ tl.take (Nat.succ n) :=
            ih (s := tl) x hx'
          have : x = hd ∨ x ∈ tl.take (Nat.succ n) := Or.inr hx''
          simpa [Seq.take, h] using this

/-- Monotonicity of `Seq.take` with respect to `n`: elements of `s.take n`
also belong to `s.take (n + 1)`. -/
lemma Seq.take_succ_subset_take
    (s : Seq α) (n : ℕ) :
    ∀ x ∈ s.take n, x ∈ s.take (n + 1) := by
  -- Reduce to the auxiliary lemma using `Nat.succ_eq_add_one`
  simpa [Nat.succ_eq_add_one] using
    (Seq.take_succ_subset_take_succ (s := s) (n := n))

/-
Append and length, Terminates, get?, membership
-/