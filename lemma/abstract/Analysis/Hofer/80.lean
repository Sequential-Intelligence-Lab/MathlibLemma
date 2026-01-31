import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma le_of_tendsto_of_eventually_ge
    {f : ℝ → ℝ} {L c : ℝ}
    (hf : Filter.Tendsto f Filter.atTop (nhds L))
    (hge : ∀ᶠ x in Filter.atTop, c ≤ f x) :
    c ≤ L := by
  have h_main : c ≤ L := by
    by_contra h
    have h₁ : L < c := by linarith
    -- Step 1: Choose ε = (c - L)/2
    have h₂ : 0 < (c - L) / 2 := by linarith
    -- Step 2: Use the definition of tendsto to find N such that for all x ≥ N, |f(x) - L| < ε
    have h₃ : ∃ (N : ℝ), ∀ (x : ℝ), x ≥ N → |f x - L| < (c - L) / 2 := by
      have h₄ : Filter.Tendsto f Filter.atTop (nhds L) := hf
      have h₅ : ∀ (ε : ℝ), 0 < ε → (∃ (N : ℝ), ∀ (x : ℝ), x ≥ N → |f x - L| < ε) := by
        intro ε hε
        have h₆ : Filter.Tendsto f Filter.atTop (nhds L) := hf
        rw [Metric.tendsto_atTop] at h₆
        obtain ⟨N, hN⟩ := h₆ ε hε
        refine' ⟨N, _⟩
        intro x hx
        exact hN x hx
      obtain ⟨N, hN⟩ := h₅ ((c - L) / 2) (by linarith)
      exact ⟨N, hN⟩
    obtain ⟨N, hN⟩ := h₃
    -- Step 3: Use the eventually condition to find M such that for all x ≥ M, f(x) ≥ c
    have h₄ : ∃ (M : ℝ), ∀ (x : ℝ), x ≥ M → c ≤ f x := by
      have h₅ : ∀ᶠ (x : ℝ) in Filter.atTop, c ≤ f x := hge
      rw [Filter.eventually_atTop] at h₅
      obtain ⟨M, hM⟩ := h₅
      refine' ⟨M, _⟩
      intro x hx
      exact hM x hx
    obtain ⟨M, hM⟩ := h₄
    -- Step 4: Choose x = max(N, M) + 1 and derive a contradiction
    have h₅ : ∃ (x : ℝ), x ≥ N ∧ x ≥ M := by
      refine' ⟨max N M, _, _⟩ <;>
      (try cases' le_total N M with hNM hNM <;> simp_all [max_eq_right, max_eq_left]) <;>
      linarith
    obtain ⟨x, hx₁, hx₂⟩ := h₅
    have h₆ : |f x - L| < (c - L) / 2 := hN x hx₁
    have h₇ : c ≤ f x := hM x hx₂
    have h₈ : f x < c := by
      have h₉ : |f x - L| < (c - L) / 2 := h₆
      have h₁₀ : f x - L < (c - L) / 2 := by
        linarith [abs_lt.mp h₉]
      have h₁₁ : f x < L + (c - L) / 2 := by linarith
      have h₁₂ : L + (c - L) / 2 < c := by linarith
      linarith
    linarith
  exact h_main