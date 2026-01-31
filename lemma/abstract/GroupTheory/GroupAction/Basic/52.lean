import Mathlib

variable {M α β : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/

lemma MulAction.map_fixedPoints
    [Monoid M] [MulAction M α] [MulAction M β]
    (f : α → β) (hf : ∀ (g : M) (a : α), f (g • a) = g • f a) :
    f '' MulAction.fixedPoints M α ⊆
      MulAction.fixedPoints M β := by
  -- Unfold subset and membership in image
  rintro y ⟨a, ha, rfl⟩
  -- Need to show: f a is fixed by the action on β
  -- ha : a ∈ MulAction.fixedPoints M α, i.e. ∀ g, g • a = a
  intro g
  have h1 : g • f a = f (g • a) := (hf g a).symm
  calc
    g • f a = f (g • a) := h1
    _       = f a       := by simpa [ha g]