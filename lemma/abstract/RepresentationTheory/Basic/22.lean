import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/

/-- 23. Image of norm is contained in the invariants (fixed points). -/
lemma Representation.range_norm_le_invariants
    {k G V : Type*} [CommSemiring k] [Group G] [Fintype G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) :
    LinearMap.range ρ.norm ≤ ρ.invariants := by
  intro x hx
  rcases hx with ⟨v, rfl⟩
  -- Now the goal is `ρ.norm v ∈ ρ.invariants`,
  -- which is exactly `Representation.norm_mem_invariants`.
  simpa using (Representation.norm_mem_invariants (ρ := ρ) (v := v))