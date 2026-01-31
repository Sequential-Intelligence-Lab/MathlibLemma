import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.mem_orbit_self_iff [Group G] [MulAction G α] {a b : α} :
    a ∈ MulAction.orbit G b ↔ ∃ g : G, g • b = a := by
  have h_main : a ∈ MulAction.orbit G b ↔ ∃ g : G, g • b = a := by
    constructor
    · -- Prove the forward direction: if a ∈ orbit G b, then ∃ g : G, g • b = a
      intro h
      -- By definition, a ∈ orbit G b means a is in the range of the function g ↦ g • b
      -- So there exists some g such that g • b = a
      have h₁ : a ∈ Set.range (fun g : G => g • b) := h
      -- Use the definition of Set.range to get the existence of g
      rcases h₁ with ⟨g, hg⟩
      -- We have g • b = a, so we can directly use this g
      exact ⟨g, by simpa using hg⟩
    · -- Prove the backward direction: if ∃ g : G, g • b = a, then a ∈ orbit G b
      intro h
      -- We have some g such that g • b = a
      rcases h with ⟨g, hg⟩
      -- By definition, a is in the range of the function g ↦ g • b because g • b = a
      have h₁ : a ∈ Set.range (fun g : G => g • b) := by
        refine' ⟨g, _⟩
        -- Show that (fun g : G => g • b) g = a
        simpa [hg] using hg
      -- Since a is in the range, it is in the orbit
      exact h₁
  -- The main statement directly gives the result
  exact h_main