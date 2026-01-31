import Mathlib

lemma dotProduct_ite_support
    [Fintype m] [DecidableEq m]
    [NonUnitalNonAssocSemiring α] [DecidableEq α] [NoZeroDivisors α]
    (v w : m → α) :
    (Finset.univ.sum (fun i : m => v i * w i)) =
      (Finset.univ.filter (fun i : m => v i ≠ 0 ∧ w i ≠ 0)).sum
        (fun i => v i * w i) := by
  -- First, rewrite the sum over `univ` as the sum over the filter where
  -- the summand is nonzero.
  have h1 :
      (Finset.univ.sum (fun i : m => v i * w i)) =
        (Finset.univ.filter (fun i : m => v i * w i ≠ 0)).sum
          (fun i => v i * w i) := by
    -- `sum_filter_ne_zero` gives the equality in the other direction
    -- so we simply `symm` it.
    simpa using
      (Finset.sum_filter_ne_zero
        (s := (Finset.univ : Finset m))
        (f := fun i : m => v i * w i)).symm

  -- Next, show that the filter `(fun i => v i * w i ≠ 0)` coincides
  -- with `(fun i => v i ≠ 0 ∧ w i ≠ 0)`.
  have hfilter :
      Finset.univ.filter (fun i : m => v i * w i ≠ 0)
        = Finset.univ.filter (fun i : m => v i ≠ 0 ∧ w i ≠ 0) := by
    -- Compare membership in both filtered sets elementwise.
    ext i
    -- `simp` will expand `Finset.mem_filter` to the conjunction
    -- of membership in `univ` and the predicate.
    -- We just need to identify `(v i * w i ≠ 0)` with `(v i ≠ 0 ∧ w i ≠ 0)`.
    have hne : (v i * w i ≠ 0) ↔ (v i ≠ 0 ∧ w i ≠ 0) := by
      constructor
      · intro h
        -- From `v i * w i ≠ 0` we get that not (v i = 0 ∨ w i = 0),
        -- hence both `v i ≠ 0` and `w i ≠ 0`.
        have hnot : ¬ (v i = 0 ∨ w i = 0) := by
          intro h'
          cases h' with
          | inl hv =>
              exact h (by simpa [hv, zero_mul] )
          | inr hw =>
              exact h (by simpa [hw, mul_zero] )
        exact ⟨by
                intro hv; exact hnot (Or.inl hv),
              by
                intro hw; exact hnot (Or.inr hw)⟩
      · intro h
        -- From `v i ≠ 0 ∧ w i ≠ 0`, use the contrapositive of `mul_eq_zero`.
        intro hz
        have hz' : v i = 0 ∨ w i = 0 := by
          -- `mul_eq_zero` is available under `[NoZeroDivisors α]`.
          exact (mul_eq_zero.mp hz)
        cases hz' with
        | inl hv => exact h.1 hv
        | inr hw => exact h.2 hw
    -- Now use `simp` with `hne`.
    simp [Finset.mem_filter, hne, and_left_comm, and_assoc]

  -- Finally, rewrite using `hfilter`.
  simpa [hfilter] using h1