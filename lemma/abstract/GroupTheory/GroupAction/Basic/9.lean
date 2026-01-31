import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_eq_singleton_iff [Monoid M] [MulAction M α] {a : α} :
    MulAction.orbit M a = {a} ↔ a ∈ MulAction.fixedPoints M α := by
  constructor
  · intro h
    -- We show that `a` is fixed by every `m : M`
    change ∀ m : M, m • a = a
    intro m
    -- `m • a` lies in the orbit
    have hm : m • a ∈ MulAction.orbit M a := ⟨m, rfl⟩
    -- Rewrite the orbit as `{a}`
    have : m • a ∈ ({a} : Set α) := by simpa [h] using hm
    -- Membership in a singleton gives the desired equality
    simpa [Set.mem_singleton_iff] using this
  · intro ha
    -- Unfold the fixed-point condition
    change ∀ m : M, m • a = a at ha
    -- Prove equality of sets by two inclusions
    apply Set.Subset.antisymm
    · -- `orbit ⊆ {a}`
      intro x hx
      rcases hx with ⟨m, rfl⟩
      -- every `m` fixes `a`
      have := ha m
      -- `m • a = a`, so we are in `{a}`
      simpa [Set.mem_singleton_iff, this]
    · -- `{a} ⊆ orbit`
      intro x hx
      -- from `x ∈ {a}` we get `x = a`
      have hx' : x = a := by
        simpa [Set.mem_singleton_iff] using hx
      subst hx'
      -- `a` is in its orbit via `1`
      refine ⟨1, ?_⟩
      simp