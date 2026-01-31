import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma tendsto_atTop_of_add_const_le {u : ℕ → ℝ} {c : ℝ}
    (hc : 0 < c) (hstep : ∀ n, u (n + 1) ≥ u n + c) :
    Filter.Tendsto u Filter.atTop Filter.atTop := by
  have h_lower_bound : ∀ n : ℕ, u n ≥ u 0 + n * c := by
    intro n
    have h : ∀ n : ℕ, u n ≥ u 0 + n * c := by
      intro n
      induction n with
      | zero =>
        norm_num
        <;>
        linarith
      | succ n ih =>
        have h₁ : u (n + 1) ≥ u n + c := hstep n
        have h₂ : u (n + 1 + 1) ≥ u (n + 1) + c := hstep (n + 1)
        have h₃ : (n : ℝ) + 1 = (n + 1 : ℕ) := by norm_cast
        have h₄ : (n : ℝ) + 1 = (n + 1 : ℕ) := by norm_cast
        have h₅ : u (n + 1) ≥ u 0 + (n : ℝ) * c + c := by
          calc
            u (n + 1) ≥ u n + c := h₁
            _ ≥ (u 0 + (n : ℝ) * c) + c := by
              -- Use the induction hypothesis to bound u n
              have h₆ : (u n : ℝ) ≥ u 0 + (n : ℝ) * c := by exact_mod_cast ih
              linarith
            _ = u 0 + (n : ℝ) * c + c := by ring
        have h₆ : u (n + 1) ≥ u 0 + ((n : ℕ) + 1 : ℝ) * c := by
          calc
            u (n + 1) ≥ u 0 + (n : ℝ) * c + c := h₅
            _ = u 0 + ((n : ℝ) * c + c) := by ring
            _ = u 0 + ((n : ℝ) + 1) * c := by ring
            _ = u 0 + ((n : ℕ) + 1 : ℝ) * c := by norm_cast
        exact_mod_cast h₆
    exact h n
  
  have h_main : Filter.Tendsto u Filter.atTop Filter.atTop := by
    refine' Filter.tendsto_atTop_atTop.mpr _
    intro B
    -- Use the Archimedean property to find N such that N > (B - u 0) / c
    have h₁ : ∃ (N : ℕ), (N : ℝ) > (B - u 0) / c := by
      obtain ⟨N, hN⟩ := exists_nat_gt ((B - u 0) / c)
      refine' ⟨N, _⟩
      exact_mod_cast hN
    obtain ⟨N, hN⟩ := h₁
    -- Show that for all n ≥ N, u n > B
    use N
    intro n hn
    have h₂ : u n ≥ u 0 + n * c := h_lower_bound n
    have h₃ : (n : ℝ) ≥ (N : ℝ) := by exact_mod_cast hn
    have h₄ : (u 0 + n * c : ℝ) > B := by
      have h₅ : (n : ℝ) * c ≥ (N : ℝ) * c := by
        nlinarith [hc]
      have h₆ : (u 0 + n * c : ℝ) ≥ (u 0 + (N : ℝ) * c : ℝ) := by
        linarith
      have h₇ : (u 0 + (N : ℝ) * c : ℝ) > B := by
        have h₈ : (N : ℝ) > (B - u 0) / c := hN
        have h₉ : (N : ℝ) * c > ((B - u 0) / c) * c := by
          nlinarith [hc]
        have h₁₀ : ((B - u 0) / c) * c = (B - u 0 : ℝ) := by
          field_simp [hc.ne']
          <;> ring
        have h₁₁ : (N : ℝ) * c > (B - u 0 : ℝ) := by linarith
        linarith
      linarith
    have h₅ : (u n : ℝ) ≥ (u 0 + n * c : ℝ) := by
      exact_mod_cast h₂
    linarith
  
  exact h_main