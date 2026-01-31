import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_congr
    [Group G] [MulAction G α] [MulAction G β]
    (f : α ≃ β)
    (hf : ∀ (g : G) (a : α),
      f (SMul.smul (M := G) (α := α) g a)
        = SMul.smul (M := G) (α := β) g (f a))
    (a : α) :
    MulAction.orbit G (f a) = f '' MulAction.orbit G a := by
  -- extensionality of sets
  ext x
  constructor
  · -- forward direction
    intro hx
    -- unpack membership in the orbit of `f a`
    rcases hx with ⟨g, hx⟩
    -- `x = g • f a`
    refine ⟨g • a, ?_, ?_⟩
    · -- `g • a` lies in the orbit of `a`
      exact ⟨g, rfl⟩
    · -- `f (g • a) = x` using `hf`
      -- from `hf` we know `f (g • a) = g • f a`
      -- and from `hx` we know `g • f a = x`
      have hfg : f (g • a) = g • f a := hf g a
      simpa [hfg, hx]
  · -- backward direction
    intro hx
    -- unpack membership in the image
    rcases hx with ⟨y, hy, rfl⟩
    -- now we need `f y ∈ orbit G (f a)`
    -- unpack membership of `y` in the orbit of `a`
    rcases hy with ⟨g, rfl⟩
    -- now goal is `f (g • a) ∈ orbit G (f a)`
    -- choose the same `g` as witness
    refine ⟨g, ?_⟩
    -- use the equivariance hypothesis (in the symmetric direction)
    simpa using (hf g a).symm