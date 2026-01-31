import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 13. Invariance of intersection of invariant submodules
theorem Representation.subrepresentation_inf
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V] (ρ : Representation k G V)
    (W₁ W₂ : Submodule k V)
    (h₁ : ∀ g, W₁ ≤ W₁.comap (ρ g))
    (h₂ : ∀ g, W₂ ≤ W₂.comap (ρ g)) :
    ∀ g, W₁ ⊓ W₂ ≤ (W₁ ⊓ W₂).comap (ρ g) := by
  intro g
  intro x hx
  have h1 : x ∈ W₁ := hx.1
  have h2 : x ∈ W₂ := hx.2
  have h3 : ρ g x ∈ W₁ := by
    have h1' : x ∈ W₁ := h1
    have h4 : x ∈ W₁.comap (ρ g) := by
      apply h₁ g
      exact h1'
    rw [Submodule.mem_comap] at h4
    exact h4
  have h4 : ρ g x ∈ W₂ := by
    have h2' : x ∈ W₂ := h2
    have h5 : x ∈ W₂.comap (ρ g) := by
      apply h₂ g
      exact h2'
    rw [Submodule.mem_comap] at h5
    exact h5
  have h5 : ρ g x ∈ W₁ ⊓ W₂ := ⟨h3, h4⟩
  show x ∈ (W₁ ⊓ W₂).comap (ρ g)
  rw [Submodule.mem_comap]
  exact h5