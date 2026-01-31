import Mathlib

/-- For a polynomial over a finite field, the Newton iterates of any element eventually become
periodic. -/
lemma Polynomial.newtonMap_eventually_periodic_finite_field
    {F : Type*} [Field F] [Finite F]
    (P : Polynomial F) (x : F) :
    ∃ m n, m < n ∧ P.newtonMap^[m] x = P.newtonMap^[n] x := by
  classical
  -- Obtain a `Fintype` instance from `[Finite F]`
  haveI := Fintype.ofFinite F

  -- Let N be one more than the cardinality of F
  let N : ℕ := Fintype.card F + 1

  -- Consider the function from `Fin N` to `F` given by iterates of the Newton map
  let g : Fin N → F := fun i => (P.newtonMap^[ (i : ℕ) ] x)

  -- Compare the cardinalities: |F| < |Fin N|
  have hcard : Fintype.card F < Fintype.card (Fin N) := by
    -- `Fintype.card (Fin N) = N` and `N = card F + 1`
    -- so this is `card F < card F + 1`, which is `Nat.lt_succ_self _`
    simpa [N] using Nat.lt_succ_self (Fintype.card F)

  -- Therefore `g` cannot be injective
  have hnotinj : ¬ Function.Injective g := by
    intro hg
    -- If it were injective, we'd have a contradiction on cardinalities
    have hle : Fintype.card (Fin N) ≤ Fintype.card F :=
      Fintype.card_le_of_injective g hg
    exact (not_le_of_gt hcard) hle

  -- Expand `¬ Function.Injective g` to get two distinct points with the same image
  have h' := hnotinj
  -- `simp` describes non-injectivity as existence of distinct points with same value
  simp [Function.Injective] at h'
  rcases h' with ⟨i, j, hij, hne⟩

  -- Turn `i ≠ j` into inequality on their natural-number indices
  have hij_nat_ne : (i : ℕ) ≠ (j : ℕ) := by
    intro h
    apply hne
    exact Fin.ext h

  -- Compare the indices as natural numbers
  cases lt_or_gt_of_ne hij_nat_ne with
  | inl hlt =>
      -- Case `(i : ℕ) < (j : ℕ)`
      refine ⟨(i : ℕ), (j : ℕ), hlt, ?_⟩
      -- The equality `hij` is already what we need, up to coercions and the definition of `g`
      simpa [g] using hij
  | inr hgt =>
      -- Case `(j : ℕ) < (i : ℕ)`
      refine ⟨(j : ℕ), (i : ℕ), hgt, ?_⟩
      -- Use symmetry of equality in this case
      simpa [g] using hij.symm