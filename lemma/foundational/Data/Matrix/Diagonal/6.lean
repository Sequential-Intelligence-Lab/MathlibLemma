import Mathlib

open Matrix

lemma diagonal_ne_zero_iff
    {α n : Type _} [Zero α] [DecidableEq n] {d : n → α} :
    Matrix.diagonal d ≠ (0 : Matrix n n α) ↔ ∃ i, d i ≠ 0 := by
  classical
  constructor
  · intro h
    by_contra h'
    -- h' : ¬ ∃ i, d i ≠ 0  →  ∀ i, d i = 0
    push_neg at h'
    -- Show diagonal d is the zero matrix
    have hz : Matrix.diagonal d = (0 : Matrix n n α) := by
      ext i j
      by_cases hij : i = j
      · subst hij
        -- diagonal entry
        have := h' i
        simp [Matrix.diagonal, Matrix.diagonal_apply, this]
      · -- off-diagonal entry
        simp [Matrix.diagonal, Matrix.diagonal_apply, hij]
    exact h hz
  · rintro ⟨i, hi⟩ h0
    -- look at the (i,i)-entry of the equality
    have := congrArg (fun M => M i i) h0
    -- left side is d i, right side is 0
    have : d i = 0 := by
      simpa [Matrix.diagonal, Matrix.diagonal_apply] using this
    exact hi this