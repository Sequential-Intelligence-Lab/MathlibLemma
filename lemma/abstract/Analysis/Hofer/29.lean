import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma finite_setOf_gt_of_summable {u : ℕ → ℝ} (hpos : ∀ n, 0 ≤ u n)
    (hs : Summable u) (ε : ℝ) (hε : 0 < ε) :
    {n | ε < u n}.Finite := by
  have h_tendsto_zero : Filter.Tendsto u Filter.atTop (nhds 0) := by
    have h₁ : Summable u := hs
    exact h₁.tendsto_atTop_zero
  
  have h_exists_N : ∃ (N : ℕ), ∀ n : ℕ, n ≥ N → u n < ε := by
    have h₁ : Filter.Tendsto u Filter.atTop (nhds 0) := h_tendsto_zero
    have h₂ : ∀ᶠ (n : ℕ) in Filter.atTop, u n < ε := by
      have h₃ : Filter.Tendsto u Filter.atTop (nhds 0) := h₁
      have h₄ : (Set.Iio ε) ∈ nhds (0 : ℝ) := by
        apply Iio_mem_nhds
        linarith
      have h₅ : ∀ᶠ (n : ℕ) in Filter.atTop, u n ∈ Set.Iio ε := h₃ h₄
      filter_upwards [h₅] with n hn
      simpa using hn
    -- Extract the threshold N from the filter eventuality
    have h₃ : ∃ (N : ℕ), ∀ n : ℕ, n ≥ N → u n < ε := by
      rw [Filter.eventually_atTop] at h₂
      obtain ⟨N, hN⟩ := h₂
      refine' ⟨N, _⟩
      intro n hn
      exact hN n hn
    exact h₃
  
  have h_main : {n : ℕ | ε < u n}.Finite := by
    obtain ⟨N, hN⟩ := h_exists_N
    have h₁ : {n : ℕ | ε < u n} ⊆ Set.Iio N := by
      intro n hn
      have h₂ : ε < u n := hn
      by_contra h
      -- If n ≥ N, then u n < ε, contradicting ε < u n
      have h₃ : n ≥ N := by
        simp only [Set.mem_Iio] at h
        omega
      have h₄ : u n < ε := hN n h₃
      linarith
    -- Since Set.Iio N is finite, the subset {n : ℕ | ε < u n} is also finite
    have h₂ : Set.Finite (Set.Iio N : Set ℕ) := Set.finite_Iio N
    exact Set.Finite.subset h₂ h₁
  
  exact h_main