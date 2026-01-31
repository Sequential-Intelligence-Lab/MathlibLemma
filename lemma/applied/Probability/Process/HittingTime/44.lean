import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

lemma hittingBtwn_prod_snd
    [ConditionallyCompleteLinearOrder ι]
    {u : ι → Ω → β} {v : ι → Ω → γ} {t : Set γ} {n m : ι} :
    hittingBtwn (fun i ω => (u i ω, v i ω)) (Set.univ ×ˢ t) n m
      = hittingBtwn v t n m := by
  funext ω
  classical
  -- Equivalence of the existence conditions in the "if"
  have hEq :
      (∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ Set.univ ×ˢ t) ↔
        ∃ j ∈ Set.Icc n m, v j ω ∈ t := by
    constructor
    · rintro ⟨j, hjIcc, hj⟩
      -- hj : (u j ω, v j ω) ∈ Set.univ ×ˢ t = ‹_ ∧ _›
      rcases hj with ⟨-, hv⟩
      exact ⟨j, hjIcc, hv⟩
    · rintro ⟨j, hjIcc, hv⟩
      exact ⟨j, hjIcc, ⟨trivial, hv⟩⟩

  -- Equality of the predicate sets under sInf
  have hPred :
      {i | (u i ω, v i ω) ∈ Set.univ ×ˢ t}
        = {i | v i ω ∈ t} := by
    ext i
    constructor
    · intro hi
      rcases hi with ⟨-, hv⟩
      exact hv
    · intro hv
      exact ⟨trivial, hv⟩

  have hSet :
      (Set.Icc n m ∩ {i | (u i ω, v i ω) ∈ Set.univ ×ˢ t})
        = Set.Icc n m ∩ {i | v i ω ∈ t} := by
    simpa [hPred]

  -- Now split on whether the simpler condition holds
  by_cases h : ∃ j ∈ Set.Icc n m, v j ω ∈ t
  · -- both sides take the "then" branch
    have h' : ∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ Set.univ ×ˢ t :=
      hEq.mpr h
    simp [hittingBtwn, h, h', hEq, hSet]
  · -- both sides take the "else" branch
    have h' : ¬ ∃ j ∈ Set.Icc n m, (u j ω, v j ω) ∈ Set.univ ×ˢ t := by
      intro hP
      exact h (hEq.mp hP)
    simp [hittingBtwn, h, h', hEq, hSet]