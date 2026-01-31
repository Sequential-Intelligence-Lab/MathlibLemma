import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma eqOn_const_of_deriv_zero_aesle
    {f : ℂ → ℂ} {U : Set ℂ}
    (hUopen : IsOpen U)
    (hDiff : DifferentiableOn ℂ f U)
    (hderiv_zero_ae :
      {z : ℂ | z ∈ U ∧ deriv f z ≠ 0}.Countable) :
    ∀ C : Set ℂ, IsPreconnected C → C ⊆ U →
      ∃ c : ℂ, Set.EqOn f (fun _ => c) C := by
  intro C hC hCU
  by_cases h : C = ∅
  · -- if C is empty, then the lemma holds trivially
    rw [h]
    use 0
    simp
  · -- Assume C is non-empty
    have h10 : C.Nonempty := by
      by_contra h'
      push_neg at h'
      have h11 : C = ∅ := by
        simpa using h'
      tauto
    rcases h10 with ⟨z0, hz0⟩
    use f z0
    intro z hz
    have h11 : z ∈ U := hCU hz
    have h12 : z0 ∈ U := hCU hz0
    -- Now, we need to show f z = f z0
    have h14 : f z = f z0 := by
      have h17 : IsPreconnected C := hC
      have h18 : z ∈ C := hz
      have h19 : z0 ∈ C := hz0
      -- Now, we need to show f z = f z0
      have h21 : ContinuousOn f C := by
        apply hDiff.continuousOn.mono
        exact hCU
      -- Now, we need some theorem about functions with zero derivative
      -- The derivative is zero except on a countable set
      have h22 : Set.EqOn (deriv f) 0 (U \ {z : ℂ | z ∈ U ∧ deriv f z ≠ 0}) := by
        intro z hz
        have h14 : z ∈ U := by
          simpa using hz.1
        have h15 : ¬(z ∈ U ∧ deriv f z ≠ 0) := by
          simpa using hz.2
        have h16 : deriv f z = 0 := by
          by_contra h
          push_neg at h
          have h17 : z ∈ U ∧ deriv f z ≠ 0 := ⟨h14, h⟩
          exfalso
          exact h15 h17
        simpa using h16
      -- But how to use this fact?
      -- We need a theorem about complex functions with zero derivative
      -- For now, let's use the fact that f is continuous and C is preconnected
      -- But this is insufficient
      -- We need to use the zero derivative fact
      -- This requires more work
      -- For now, I give up
      exfalso
      have h23 : z ∈ C := hz
      have h24 : z0 ∈ C := hz0
      -- This is incomplete
      sorry
    exact h14