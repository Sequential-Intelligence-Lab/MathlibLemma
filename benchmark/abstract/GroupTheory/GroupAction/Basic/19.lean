import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.card_fixedPoints_le_card
    [Group G] [MulAction G α]
    [Fintype α] [Fintype (MulAction.fixedPoints G α)] :
    Fintype.card (MulAction.fixedPoints G α) ≤ Fintype.card α := by
  sorry

/-! A version also assuming `[Fintype G]`, if you still want it. -/
lemma MulAction.card_fixedPoints_le_card'
    [Group G] [Fintype G]
    [MulAction G α] [Fintype α]
    [Fintype (MulAction.fixedPoints G α)] :
    Fintype.card (MulAction.fixedPoints G α) ≤ Fintype.card α := by
  sorry