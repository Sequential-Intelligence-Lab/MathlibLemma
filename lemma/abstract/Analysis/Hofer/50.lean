import Mathlib

/-- If a sequence in a metric space has a convergent subsequence and is Cauchy, then the
whole sequence converges to the same limit as that subsequence. -/
lemma CauchySeq.tendsto_of_subseq {X : Type*} [MetricSpace X]
    {u : ℕ → X} (hc : CauchySeq u)
    {φ : ℕ → ℕ} (hφ : StrictMono φ) {x : X}
    (hφlim : Filter.Tendsto (fun n => u (φ n)) Filter.atTop (nhds x)) :
    Filter.Tendsto u Filter.atTop (nhds x) := by
  -- Use ε–N characterization of limits in metric spaces.
  refine Metric.tendsto_atTop.2 ?_
  intro ε εpos
  have hε2 : 0 < ε / 2 := half_pos εpos

  -- Cauchy property of `u` in ε/2 form (metric version).
  have hC := (Metric.cauchySeq_iff).1 hc
  obtain ⟨N₁, hN₁⟩ := hC (ε / 2) hε2
  -- hN₁ : ∀ ⦃m⦄, m ≥ N₁ → ∀ ⦃n⦄, n ≥ N₁ → dist (u m) (u n) < ε / 2

  -- Convergence of the subsequence `u ∘ φ` to `x`, also in ε/2 form.
  obtain ⟨N₂, hN₂⟩ :=
    (Metric.tendsto_atTop.1 hφlim) (ε / 2) hε2
  -- hN₂ : ∀ ⦃n⦄, n ≥ N₂ → dist (u (φ n)) x < ε / 2

  -- For strictly monotone φ : ℕ → ℕ, we have n ≤ φ n.
  have hφ_ge : ∀ n, n ≤ φ n := by
    intro n
    induction' n with n ih
    · exact Nat.zero_le _
    · have hstep : φ n < φ (n + 1) := hφ (Nat.lt_succ_self n)
      have hnle : n ≤ φ n := ih
      exact Nat.succ_le_of_lt (lt_of_le_of_lt hnle hstep)

  -- Choose N large enough so that both Cauchy and subsequence bounds hold.
  refine ⟨max N₁ N₂, ?_⟩
  intro n hn
  -- From hn : n ≥ max N₁ N₂, we get n ≥ N₁.
  have hnN₁ : n ≥ N₁ := le_trans (le_max_left _ _) hn

  -- Auxiliary index k, not smaller than n, N₁, and N₂.
  let k := max n (max N₁ N₂)

  -- max N₁ N₂ ≤ k
  have hkNmax : max N₁ N₂ ≤ k := by
    have : max N₁ N₂ ≤ max n (max N₁ N₂) :=
      le_max_right n (max N₁ N₂)
    simpa [k] using this

  -- Hence N₁ ≤ k and N₂ ≤ k.
  have hkN₁ : N₁ ≤ k := le_trans (le_max_left _ _) hkNmax
  have hkN₂ : N₂ ≤ k := le_trans (le_max_right _ _) hkNmax

  -- From strict monotonicity we know k ≤ φ k, hence N₁ ≤ φ k.
  have hkφ : k ≤ φ k := hφ_ge k
  have hφkN₁ : N₁ ≤ φ k := le_trans hkN₁ hkφ

  -- Apply Cauchy property with indices n and φ k.
  have h1 : dist (u n) (u (φ k)) < ε / 2 :=
    hN₁ (m := n) hnN₁ (n := φ k) hφkN₁

  -- Apply convergence of the subsequence at index k.
  have h2 : dist (u (φ k)) x < ε / 2 :=
    hN₂ (n := k) hkN₂

  -- Combine via triangle inequality.
  have htriangle :
      dist (u n) x
        ≤ dist (u n) (u (φ k)) + dist (u (φ k)) x :=
    dist_triangle _ _ _
  -- Bound the sum by ε.
  have hsum_lt :
      dist (u n) (u (φ k)) + dist (u (φ k)) x < ε := by
    have := add_lt_add h1 h2
    simpa [add_halves] using this
  -- Conclude the desired inequality.
  have hlt : dist (u n) x < ε :=
    lt_of_le_of_lt htriangle hsum_lt

  exact hlt