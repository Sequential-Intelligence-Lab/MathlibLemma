import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_eq_singleton_of_mem_fixedPoints [Monoid M] [MulAction M α] {a : α}
    (h : a ∈ MulAction.fixedPoints M α) :
    MulAction.orbit M a = {a} := by
  classical
  -- Unfold the definition of fixed points
  change (∀ m : M, m • a = a) at h
  -- Prove set equality by extensionality
  ext b
  constructor
  · -- `orbit ⊆ {a}`
    rintro ⟨m, rfl⟩
    have hm : m • a = a := h m
    -- Show `m • a` is the unique element `a` of the singleton
    simpa [hm] using (Set.mem_singleton a : a ∈ ({a} : Set α))
  · -- `{a} ⊆ orbit`
    intro hb
    have hb' : b = a := by simpa using hb
    subst hb'
    refine ⟨1, ?_⟩
    simpa using (one_smul M a)