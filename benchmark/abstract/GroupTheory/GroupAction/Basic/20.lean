import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.card_orbit_mul_card_stabilizer
    [Group G] [MulAction G α] [Fintype G] {a : α}
    [Fintype (MulAction.orbit G a)] [Fintype (MulAction.stabilizer G a)] :
    Fintype.card (MulAction.orbit G a) *
      Fintype.card (MulAction.stabilizer G a) =
        Fintype.card G := by
  sorry
