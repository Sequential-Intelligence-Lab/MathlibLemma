import Mathlib

lemma diagonal_inj_iff [Zero α] [DecidableEq n] {d₁ d₂ : n → α} :
    Matrix.diagonal d₁ = Matrix.diagonal d₂ ↔ ∀ i, d₁ i = d₂ i := by
  constructor
  · intro h i
    -- Evaluate the matrix equality at the (i,i) entry
    have := congrArg (fun M => M i i) h
    -- On a diagonal matrix, the (i,i) entry is exactly d i
    simpa [Matrix.diagonal] using this
  · intro h
    -- From pointwise equality, get function equality
    have hfun : d₁ = d₂ := funext h
    -- Rewrite using function equality
    simpa [hfun]