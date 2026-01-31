import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 25. Norm acts as scalar multiple of identity on invariants
lemma Representation.norm_on_invariants
    {k G V : Type*} [Field k] [Group G] [Fintype G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V)
    (hG : (Fintype.card G : k) ≠ 0)
    (v : V) (hv : ∀ g : G, ρ g v = v) :
    ρ.norm v = (Fintype.card G : k) • v := by
  classical
  -- First, rewrite `ρ.norm v` as a sum over `G`, and use invariance.
  have hρ : ρ.norm v = ∑ g : G, v := by
    simp [Representation.norm, hv]
  -- Now compute the sum of the constant vector `v` over `G`.
  have hsum : ∑ g : G, v = (Fintype.card G : k) • v := by
    -- Express `v` as `(1 : k) • v` inside the sum.
    have hL : ∑ g : G, v = ∑ g : G, (1 : k) • v := by
      simp
    -- Use `Finset.sum_smul` to relate the sum of scalars and the sum of vectors.
    have hsum_smul :
        ∑ g : G, (1 : k) • v = (∑ g : G, (1 : k)) • v := by
      -- `sum_smul` gives `(∑ g, (1 : k)) • v = ∑ g, (1 : k) • v`,
      -- so we take the symmetric form.
      have h :=
        Finset.sum_smul (s := (Finset.univ : Finset G))
          (f := fun _ : G => (1 : k)) (x := v)
      exact h.symm
    -- Put these equalities together and evaluate the scalar sum.
    calc
      ∑ g : G, v
          = ∑ g : G, (1 : k) • v := hL
      _ = (∑ g : G, (1 : k)) • v := hsum_smul
      _ = (Fintype.card G : k) • v := by
            -- Sum of constant `1 : k` over `univ` is `card G`.
            simpa [Finset.sum_const, Finset.card_univ]
  -- Combine both steps.
  simpa [hρ] using hsum