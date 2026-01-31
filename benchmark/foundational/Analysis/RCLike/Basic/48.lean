import Mathlib

/-- Nonnegative norm is preserved under complex conjugation (for `ℂ`). -/
lemma nnnorm_conj' (z : ℂ) :
    ‖star z‖₊ = ‖z‖₊ := by
  sorry

/-- Nonnegative norm is preserved under conjugation for an `RCLike` type. -/
lemma RCLike.nnnorm_conj' (K : Type*) [RCLike K] (z : K) :
    ‖star z‖₊ = ‖z‖₊ := by
  sorry