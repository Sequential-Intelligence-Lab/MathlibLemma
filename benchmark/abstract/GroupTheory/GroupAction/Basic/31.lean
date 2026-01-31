import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_subtype_subset
    [Monoid M] [MulAction M α] (p : α → Prop) [DecidablePred p]
    [SMul M {x // p x}]
    (a : {x // p x}) :
    (Subtype.val '' MulAction.orbit M a) ⊆
      MulAction.orbit M (a : α) := by
  sorry