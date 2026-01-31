import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.card_orbit_dvd_card_group
    [Group G] [MulAction G α] [Fintype G] {a : α}
    [Fintype (MulAction.orbit G a)] :
    Fintype.card (MulAction.orbit G a) ∣ Fintype.card G := by
  sorry

/-! ### Interaction with equivalences and embeddings -/
