import Mathlib

variable {G α β : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma AddAction.orbit_congr
    [AddGroup G] [AddAction G α] [AddAction G β]
    (f : α ≃ β)
    (hf : ∀ (g : G) (a : α), f (g +ᵥ a) = g +ᵥ f a)
    (a : α) :
    AddAction.orbit G (f a) = f '' AddAction.orbit G a := by
  classical
  ext b
  constructor
  · -- Forward inclusion
    intro hb
    rcases hb with ⟨g, hg⟩
    refine ⟨g +ᵥ a, ?_, ?_⟩
    · -- Show g +ᵥ a is in the orbit of a
      refine ⟨g, rfl⟩
    · -- Show f (g +ᵥ a) = b
      -- Using hf and hg we have f (g +ᵥ a) = g +ᵥ f a = b
      simpa [hf, hg]
  · -- Backward inclusion
    intro hb
    rcases hb with ⟨x, hx, rfl⟩
    rcases hx with ⟨g, rfl⟩
    -- Now the goal is: f (g +ᵥ a) ∈ orbit G (f a)
    refine ⟨g, ?_⟩
    -- This is g +ᵥ f a = f (g +ᵥ a), which follows from hf
    simpa [hf]

/-! ### Pointwise set action lemmas -/