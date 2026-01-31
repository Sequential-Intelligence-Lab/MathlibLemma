import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

lemma hittingBtwn_eq_left_of_subset
    [ConditionallyCompleteLinearOrder ι] {u : ι → Ω → β}
    {s : Set β} {n m : ι} (hnm : n ≤ m)
    (h_all : ∀ ω, u n ω ∈ s) :
    hittingBtwn u s n m = fun _ ↦ n := by
  classical
  -- Prove function equality pointwise
  funext ω
  -- There is always at least one index between n and m hitting s, namely n itself
  have hexists : ∃ j, (n ≤ j ∧ j ≤ m) ∧ u j ω ∈ s := by
    refine ⟨n, ?_⟩
    exact ⟨⟨le_rfl, hnm⟩, h_all ω⟩
  -- Use the "then" branch of the definition, removing the `if`
  simp [hittingBtwn, hexists]  -- goal becomes: sInf (Icc n m ∩ {i | u i ω ∈ s}) = n
  -- Name the set whose infimum is taken
  set S : Set ι := Set.Icc n m ∩ {i | u i ω ∈ s} with hS
  -- Show that n ∈ S
  have hs : u n ω ∈ s := h_all ω
  have hmem : n ∈ S := by
    have hIcc : n ∈ Set.Icc n m := ⟨le_rfl, hnm⟩
    have : n ∈ {i : ι | u i ω ∈ s} := by simpa [hs]
    exact ⟨hIcc, this⟩
  -- Any element of S is ≥ n, so n is a lower bound
  have h_lower : ∀ k ∈ S, n ≤ k := by
    intro k hk
    -- hk.1 : k ∈ Icc n m, so hk.1.1 : n ≤ k
    exact hk.1.1
  -- S is bounded below by n
  have hbdd : BddBelow S := ⟨n, h_lower⟩
  -- S is nonempty since it contains n
  have h_nonempty : S.Nonempty := ⟨n, hmem⟩
  -- First inequality: sInf S ≤ n
  have h_le : sInf S ≤ n := csInf_le (s := S) hbdd hmem
  -- Second inequality: n ≤ sInf S
  have h_ge : n ≤ sInf S := le_csInf (s := S) h_nonempty h_lower
  -- Combine to get equality and rewrite S back
  have h_eq : sInf S = n := le_antisymm h_le h_ge
  simpa [S] using h_eq