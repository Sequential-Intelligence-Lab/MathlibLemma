import Mathlib

lemma Fin.induction_strong {n : ℕ} {P : Fin n → Prop}
    (h0 : ∀ i : Fin n, (∀ j < i, P j) → P i)
    (hs : ∀ i, (∀ j < i, P j) → P i) :
    ∀ i, P i := by
  -- Define a predicate on ℕ saying: all elements of `Fin n` with value < k satisfy `P`.
  let Q : ℕ → Prop := fun k => ∀ i : Fin n, i.1 < k → P i

  have main : ∀ k, Q k := by
    intro k
    -- Strong induction on `k`.
    refine Nat.strong_induction_on k ?step
    -- Induction step: assume `Q m` for all `m < k`, prove `Q k`.
    intro k IH
    -- Need: ∀ i : Fin n, i.1 < k → P i
    intro i hik
    -- Use the strong induction hypothesis `h0` on `i`.
    apply h0 i
    -- Show: ∀ j < i, P j
    intro j hj
    -- From `hik : i.1 < k` and `hj : j < i` (i.e., `j.1 < i.1`), get `j.1 < k`.
    have hi_lt : i.1 < k := hik
    have hj_lt : j.1 < i.1 := hj
    have hjk : j.1 < k := lt_trans hj_lt hi_lt
    -- Apply the outer induction hypothesis at `m = i.1`.
    have Qi1 : Q i.1 := IH i.1 hi_lt
    -- Now `Qi1` says: ∀ t : Fin n, t.1 < i.1 → P t
    exact Qi1 j hj_lt

  -- Now use `Q n` to conclude `∀ i, P i`.
  intro i
  have hQn : Q n := main n
  -- For `i : Fin n`, we have `i.1 < n` by definition of `Fin`.
  exact hQn i i.is_lt