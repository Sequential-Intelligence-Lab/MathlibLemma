import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.nontrivial_of_two_orbits
    [Group G] [MulAction G α] {a b : α}
    (h : a ∉ MulAction.orbit G b) :
    Nontrivial α := by
  -- It suffices to produce two distinct elements of `α`, namely `a` and `b`.
  refine ⟨⟨a, b, ?_⟩⟩
  -- Prove `a ≠ b` by contradiction.
  intro h_eq
  -- If `a = b`, then `a ∉ orbit G b` becomes `b ∉ orbit G b`.
  have h' : b ∉ MulAction.orbit G b := by
    simpa [h_eq] using h
  -- But `b` is always in its own orbit via the identity element.
  have hb : b ∈ MulAction.orbit G b := by
    refine ⟨1, ?_⟩
    simpa using (one_smul G b)
  -- Contradiction.
  exact h' hb

/-! ### Miscellaneous -/