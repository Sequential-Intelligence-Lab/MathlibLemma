import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_eq_univ_iff [Group G] [MulAction G α] :
    MulAction.fixedPoints G α = Set.univ ↔
      ∀ g : G, ∀ a : α, g • a = a := by
  constructor
  · intro h g a
    -- a is in univ, hence in fixedPoints via h
    have : a ∈ MulAction.fixedPoints G α := by
      have : a ∈ (Set.univ : Set α) := by trivial
      simpa [h] using this
    -- unfold membership in fixedPoints
    change g • a = a
    exact this g
  · intro h
    -- show equality of sets by extensionality
    apply Set.ext
    intro a
    -- unfold membership, use h
    -- left: a ∈ fixedPoints ↔ ∀ g, g • a = a
    -- right: a ∈ univ ↔ True
    simp [MulAction.fixedPoints, h]