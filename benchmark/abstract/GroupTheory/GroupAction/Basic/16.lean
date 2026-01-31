import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.card_orbit_eq_card_orbit_of_mem
    [Group G] [MulAction G α] [Fintype G] [Fintype α]
    {a b : α}
    [Fintype (MulAction.orbit G a)]
    [Fintype (MulAction.orbit G b)]
    (h : b ∈ MulAction.orbit G a) :
    Fintype.card (MulAction.orbit G a) = Fintype.card (MulAction.orbit G b) := by
  sorry