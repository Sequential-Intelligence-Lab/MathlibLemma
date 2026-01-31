import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma support_subset_iff {α β} [Zero β] (f g : α → β) :
    (Function.support f ⊆ Function.support g) ↔
      ∀ x, g x = 0 → f x = 0 := by
  constructor
  · intro h x hxg
    -- We show by contradiction that f x = 0
    by_contra hxf
    -- From hxf : f x ≠ 0 we get x ∈ support f
    have hx : x ∈ Function.support f := hxf
    -- Using the subset hypothesis, x ∈ support g
    have hx' : x ∈ Function.support g := h hx
    -- But hx' says g x ≠ 0, contradicting hxg : g x = 0
    exact hx' (by simpa [Function.support, hxg])
  · intro h x hx
    -- hx : x ∈ support f, i.e. f x ≠ 0
    -- We must show x ∈ support g, i.e. g x ≠ 0
    by_contra hxg
    -- hxg : ¬ g x ≠ 0, so g x = 0
    have hxg' : g x = 0 := by
      simpa [Function.support] using hxg
    -- From hxg' : g x = 0 we deduce f x = 0 via h
    have : f x = 0 := h x hxg'
    -- This contradicts hx : f x ≠ 0
    exact hx this