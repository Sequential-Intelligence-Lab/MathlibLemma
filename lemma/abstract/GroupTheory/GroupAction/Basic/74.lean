import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma smul_eq_smul_of_stabilizer_le
    [Group G] [Mul α] [MulAction G α]
    {g h : G} {a : α}
    (H : MulAction.stabilizer G a ≤ ⊥)
    (hg : g • a = a) (hh : h • a = a) :
    g = h := by
  -- g fixes a, so g is in the stabilizer of a
  have hg' : g ∈ MulAction.stabilizer G a := by
    change g • a = a
    exact hg
  -- hence g is in ⊥, so g = 1
  have hg1 : g = (1 : G) := by
    have : g ∈ (⊥ : Subgroup G) := H hg'
    simpa using this

  -- h fixes a, so h is in the stabilizer of a
  have hh' : h ∈ MulAction.stabilizer G a := by
    change h • a = a
    exact hh
  -- hence h is in ⊥, so h = 1
  have hh1 : h = (1 : G) := by
    have : h ∈ (⊥ : Subgroup G) := H hh'
    simpa using this

  -- conclude g = h
  simpa [hg1, hh1]