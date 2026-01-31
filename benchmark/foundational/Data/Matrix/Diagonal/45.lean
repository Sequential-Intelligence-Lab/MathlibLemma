import Mathlib

namespace Matrix

variable {n α : Type _}

lemma diag_updateColumn_self
    [DecidableEq n] (A : Matrix n n α) (i : n) (c : n → α) :
    (A.updateCol i c).diag i = c i := by
  sorry

end Matrix