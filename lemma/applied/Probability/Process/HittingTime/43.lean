import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat



variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
--------------------------------------------------------------------------------
-- Products and compositions of processes
--------------------------------------------------------------------------------

theorem hittingBtwn_prod_fst
    [ConditionallyCompleteLinearOrder ι]
    {u : ι → Ω → β} {v : ι → Ω → γ} {s : Set β} {n m : ι} :
    hittingBtwn (fun i ω => (u i ω, v i ω)) (s ×ˢ Set.univ) n m
      = hittingBtwn u s n m := by
  ext ω
  have h1 : ∀ k : ι, (n ≤ k ∧ k ≤ m ∧ (u k ω, v k ω) ∈ s ×ˢ Set.univ) ↔ (n ≤ k ∧ k ≤ m ∧ u k ω ∈ s) := by
    intro k
    constructor
    · -- Assume (n ≤ k ∧ k ≤ m ∧ (u k ω, v k ω) ∈ s ×ˢ Set.univ), prove (n ≤ k ∧ k ≤ m ∧ u k ω ∈ s)
      rintro ⟨hn, hm, h⟩
      have h2 : u k ω ∈ s := by
        have h3 : (u k ω, v k ω) ∈ s ×ˢ Set.univ := h
        exact h3.1
      tauto
    · -- Assume (n ≤ k ∧ k ≤ m ∧ u k ω ∈ s), prove (n ≤ k ∧ k ≤ m ∧ (u k ω, v k ω) ∈ s ×ˢ Set.univ)
      rintro ⟨hn, hm, h⟩
      have h3 : (u k ω, v k ω) ∈ s ×ˢ Set.univ := by
        exact ⟨h, Set.mem_univ (v k ω)⟩
      tauto
  have h2 : {k : ι | n ≤ k ∧ k ≤ m ∧ (u k ω, v k ω) ∈ s ×ˢ Set.univ} = {k : ι | n ≤ k ∧ k ≤ m ∧ u k ω ∈ s} := by
    ext k
    simp [h1]
  have eq1 : (∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ s ×ˢ Set.univ) ↔ (∃ j ∈ Set.Icc n m, u j ω ∈ s) := by
    apply Iff.intro
    · -- Assume ∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ s ×ˢ Set.univ, prove ∃ j ∈ Set.Icc n m, u j ω ∈ s
      rintro ⟨j, ⟨h_j1, h_j2⟩⟩
      refine ⟨j, ?_⟩
      constructor
      · exact h_j1
      · have h5 : u j ω ∈ s := by
          have h6 : (u j ω, v j ω) ∈ s ×ˢ Set.univ := h_j2
          exact h6.1
        exact h5
    · -- Assume ∃ j ∈ Set.Icc n m, u j ω ∈ s, prove ∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ s ×ˢ Set.univ
      rintro ⟨j, ⟨h_j1, h_j2⟩⟩
      refine ⟨j, ?_⟩
      constructor
      · exact h_j1
      · have h3 : (u j ω, v j ω) ∈ s ×ˢ Set.univ := by
          exact ⟨h_j2, Set.mem_univ (v j ω)⟩
        exact h3
  have eq2 : (Set.Icc n m ∩ {i : ι | (u i ω, v i ω) ∈ s ×ˢ Set.univ}) = (Set.Icc n m ∩ {i : ι | u i ω ∈ s}) := by
    ext k
    have h3 : k ∈ (Set.Icc n m ∩ {i : ι | (u i ω, v i ω) ∈ s ×ˢ Set.univ}) ↔ k ∈ (Set.Icc n m ∩ {i : ι | u i ω ∈ s}) := by
      constructor
      · -- Assume k ∈ Set.Icc n m ∩ {i | (u i ω, v i ω) ∈ s ×ˢ Set.univ}, prove k ∈ Set.Icc n m ∩ {i | u i ω ∈ s}
        rintro ⟨⟨hn, hm⟩, h⟩
        have h4 : u k ω ∈ s := by
          have h5 : (u k ω, v k ω) ∈ s ×ˢ Set.univ := h
          exact h5.1
        exact ⟨⟨hn, hm⟩, h4⟩
      · -- Assume k ∈ Set.Icc n m ∩ {i | u i ω ∈ s}, prove k ∈ Set.Icc n m ∩ {i | (u i ω, v i ω) ∈ s ×ˢ Set.univ}
        rintro ⟨⟨hn, hm⟩, h⟩
        have h3 : (u k ω, v k ω) ∈ s ×ˢ Set.univ := by
          exact ⟨h, Set.mem_univ (v k ω)⟩
        exact ⟨⟨hn, hm⟩, h3⟩
    tauto
  have eq3 : hittingBtwn (fun i ω => (u i ω, v i ω)) (s ×ˢ Set.univ) n m ω = hittingBtwn u s n m ω := by
    by_cases h : ∃ j ∈ Set.Icc n m, u j ω ∈ s
    · -- Case where ∃ j ∈ Set.Icc n m, u j ω ∈ s
      have h' : ∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ s ×ˢ Set.univ := by
        rcases h with ⟨j, ⟨h_j1, h_j2⟩⟩
        refine ⟨j, ?_⟩
        constructor
        · exact h_j1
        · have h3 : (u j ω, v j ω) ∈ s ×ˢ Set.univ := by
            exact ⟨h_j2, Set.mem_univ (v j ω)⟩
          exact h3
      have eq4 : hittingBtwn (fun i ω => (u i ω, v i ω)) (s ×ˢ Set.univ) n m ω =
          sInf (Set.Icc n m ∩ {i : ι | (u i ω, v i ω) ∈ s ×ˢ Set.univ}) := by
        have h'' : ∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ s ×ˢ Set.univ := h'
        simp only [hittingBtwn, if_pos h'']
      have eq5 : hittingBtwn u s n m ω = sInf (Set.Icc n m ∩ {i : ι | u i ω ∈ s}) := by
        have h'' : ∃ j ∈ Set.Icc n m, u j ω ∈ s := h
        simp only [hittingBtwn, if_pos h'']
      rw [eq4, eq5]
      have eq6 : sInf (Set.Icc n m ∩ {i : ι | (u i ω, v i ω) ∈ s ×ˢ Set.univ}) = sInf (Set.Icc n m ∩ {i : ι | u i ω ∈ s}) := by
        have eq7 : Set.Icc n m ∩ {i : ι | (u i ω, v i ω) ∈ s ×ˢ Set.univ} = Set.Icc n m ∩ {i : ι | u i ω ∈ s} := eq2
        rw [eq7]
      exact eq6
    · -- Case where ¬ ∃ j ∈ Set.Icc n m, u j ω ∈ s
      have h' : ¬ ∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ s ×ˢ Set.univ := by
        intro h''
        rcases h'' with ⟨j, ⟨h_j1, h_j2⟩⟩
        have h3 : u j ω ∈ s := by
          have h4 : (u j ω, v j ω) ∈ s ×ˢ Set.univ := h_j2
          exact h4.1
        have h4 : ∃ j ∈ Set.Icc n m, u j ω ∈ s := by
          refine ⟨j, ?_⟩
          constructor
          · exact h_j1
          · exact h3
        contradiction
      have eq4 : hittingBtwn (fun i ω => (u i ω, v i ω)) (s ×ˢ Set.univ) n m ω = m := by
        have h'' : ¬ ∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ s ×ˢ Set.univ := h'
        simp only [hittingBtwn, if_neg h'']
      have eq5 : hittingBtwn u s n m ω = m := by
        have h'' : ¬ ∃ j ∈ Set.Icc n m, u j ω ∈ s := by
          simpa using h
        simp only [hittingBtwn, if_neg h'']
      rw [eq4, eq5]
  exact eq3