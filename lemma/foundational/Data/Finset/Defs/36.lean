import Mathlib

lemma Finset.ssubset_iff_ssubset_coe {α} [DecidableEq α] {s t : Finset α} :
    s ⊂ t ↔ (s : Set α) ⊂ (t : Set α) := by
  constructor
  · -- → direction: Finset ssubset implies Set ssubset on the coerced sets
    intro hs
    -- Unpack Finset strict subset as subset + inequality
    rcases (Finset.ssubset_iff_subset_ne).1 hs with ⟨hsub, hne⟩
    -- Build the subset relation on sets
    have hsub_set : (s : Set α) ⊆ (t : Set α) := by
      intro x hx
      -- Move membership from set-coe to finset, use hsub, then coe back
      have hx_fin : x ∈ s := by simpa using hx
      have hx_fin_t : x ∈ t := hsub hx_fin
      simpa using hx_fin_t
    -- Build the inequality on sets using injectivity of the coercion
    have hne_set : (s : Set α) ≠ (t : Set α) := by
      intro h_eq
      apply hne
      -- If the coerced sets are equal, the finsets are equal by injectivity
      exact Finset.coe_injective h_eq
    -- Repack as strict subset for sets
    exact (Set.ssubset_iff_subset_ne).2 ⟨hsub_set, hne_set⟩
  · -- ← direction: Set ssubset on coerced sets implies Finset ssubset
    intro hs
    -- Unpack Set strict subset as subset + inequality
    rcases (Set.ssubset_iff_subset_ne).1 hs with ⟨hsub_set, hne_set⟩
    -- Build the subset relation on finsets
    have hsub : s ⊆ t := by
      intro x hx
      -- Move membership to sets, use hsub_set, then back to finsets
      have hx_set : x ∈ (s : Set α) := by simpa using hx
      have hx_set_t : x ∈ (t : Set α) := hsub_set hx_set
      simpa using hx_set_t
    -- Build the inequality on finsets using the inequality on sets
    have hne : s ≠ t := by
      intro h_eq
      apply hne_set
      -- If finsets are equal, their coerced sets are equal
      simpa [h_eq]
    -- Repack as strict subset for finsets
    exact (Finset.ssubset_iff_subset_ne).2 ⟨hsub, hne⟩