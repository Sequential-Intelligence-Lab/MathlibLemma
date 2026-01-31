import Mathlib

/-- Nonnegative norm is preserved under complex conjugation (for `ℂ`). -/
lemma nnnorm_conj' (z : ℂ) :
    ‖star z‖₊ = ‖z‖₊ := by
  -- We can use the more general `RCLike` lemma instantiated with `ℂ`.
  simpa using (RCLike.nnnorm_conj' ℂ z)

/-- Nonnegative norm is preserved under conjugation for an `RCLike` type. -/
lemma RCLike.nnnorm_conj' (K : Type*) [RCLike K] (z : K) :
    ‖star z‖₊ = ‖z‖₊ := by
  -- Prove equality of `ℝ≥0` by proving equality of their coercions to `ℝ`.
  apply Subtype.ext
  change ‖star z‖ = ‖z‖
  -- `star` is an isometry, so it preserves the (real) norm.
  simpa using (Isometry.star.norm_map z)