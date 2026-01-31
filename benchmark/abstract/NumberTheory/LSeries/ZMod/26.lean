import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma ZMod.stdAddChar_primitive_iff_coprime (N : ℕ) [NeZero N] :
    AddChar.IsPrimitive (ZMod.stdAddChar (N := N)) ↔ True := by
  sorry