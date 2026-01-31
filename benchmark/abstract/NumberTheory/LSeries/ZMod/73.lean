import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma ZMod.stdAddChar_expectation_zero
    {N : ℕ} [NeZero N] {ω : Type*} [Fintype ω]
    (X : ω → ZMod N)
    (hX : ∀ a : ZMod N, (Fintype.card {ω' : ω // X ω' = a}) = Fintype.card ω / N) :
    (∑ ω, ZMod.stdAddChar (X ω)) = 0 := by
  sorry

/-! ### Discrete harmonic analysis lemma -/
