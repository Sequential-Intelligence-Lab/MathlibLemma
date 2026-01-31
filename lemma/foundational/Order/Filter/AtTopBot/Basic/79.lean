import Mathlib

lemma Filter.atTop_isBoundedUnder_lt_iff_nat {f : ℕ → ℕ} :
    (Filter.atTop.IsBoundedUnder (· < ·) f) ↔ ∃ M, ∀ n, f n < M := by
  classical
  constructor
  · -- (→) from eventual boundedness to global boundedness
    intro h
    rcases h with ⟨M0, h0⟩
    -- h0 : ∀ᶠ n in atTop, f n < M0
    rcases Filter.eventually_atTop.1 h0 with ⟨N, hN⟩
    -- hN : ∀ n ≥ N, f n < M0
    -- Define a bound that also covers the finitely many values below N
    let B : ℕ := (Finset.range N).sup (fun k => f k)
    let M : ℕ := max M0 (Nat.succ B)
    refine ⟨M, ?_⟩
    intro n
    by_cases hlt : n < N
    · -- Case n < N: use the finite supremum
      have hn_mem : n ∈ Finset.range N := Finset.mem_range.mpr hlt
      have hle_B : f n ≤ B := by
        -- f n is ≤ the supremum over the finite set
        simpa [B] using
          (Finset.le_sup (s := Finset.range N) (f := fun k => f k) hn_mem)
      have hlt_succB : f n < Nat.succ B :=
        Nat.lt_succ_of_le hle_B
      have hle_M : Nat.succ B ≤ M := by
        -- since M = max M0 (Nat.succ B)
        exact le_max_right _ _
      exact lt_of_lt_of_le hlt_succB hle_M
    · -- Case n ≥ N: use the tail bound by M0
      have hge : n ≥ N := le_of_not_gt hlt
      have hlt_M0 : f n < M0 := hN n hge
      have hle_M : M0 ≤ M := by
        -- since M = max M0 (Nat.succ B)
        exact le_max_left _ _
      exact lt_of_lt_of_le hlt_M0 hle_M
  · -- (←) from global boundedness to eventual boundedness
    intro h
    rcases h with ⟨M, hM⟩
    -- hM : ∀ n, f n < M
    refine ⟨M, ?_⟩
    -- Unfold the definition of eventuality
    change {n | f n < M} ∈ (Filter.atTop : Filter ℕ)
    -- This set is all of ℕ, since the property holds for all n
    have hset : {n | f n < M} = Set.univ := by
      ext n
      simp [hM n]
    -- Any filter contains the whole space
    simpa [hset] using
      (Filter.univ_mem : (Set.univ : Set ℕ) ∈ (Filter.atTop : Filter ℕ))