import Mathlib

open Matrix

lemma diagonal_nonempty_iff
    [Fintype n] [DecidableEq n] [Zero α]
    {d : n → α} :
    (∃ i, d i ≠ 0) ↔ Matrix.diagonal d ≠ (0 : Matrix n n α) := by
  classical
  constructor
  · rintro ⟨i, hi⟩ h0
    -- Evaluate the matrix equality at (i,i)
    have := congrArg (fun M => M i i) h0
    -- On a diagonal matrix, the (i,i)-entry is d i
    have hdi : d i = 0 := by simpa using this
    exact hi hdi
  · intro hne
    by_contra h_ex
    -- From ¬∃ i, d i ≠ 0, we get ∀ i, d i = 0
    have hzero : ∀ i, d i = 0 := by
      intro i
      by_contra hdi
      exact h_ex ⟨i, hdi⟩
    -- Show the whole diagonal matrix is zero
    have hmat : Matrix.diagonal d = (0 : Matrix n n α) := by
      ext i j
      by_cases hij : i = j
      · subst hij
        -- diagonal entry
        simpa [hzero i]  -- diagonal d i i = d i = 0
      · -- off-diagonal entry is 0 by definition
        simp [Matrix.diagonal, hij]
    exact hne hmat