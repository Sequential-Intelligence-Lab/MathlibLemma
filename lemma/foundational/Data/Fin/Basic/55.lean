import Mathlib

lemma Fin.inf_univ_eq_zero {n : ℕ} [NeZero n] :
    sInf (Set.univ : Set (Fin n)) = 0 := by
  -- First, show sInf univ ≤ 0 using that 0 ∈ univ
  have h1 : sInf (Set.univ : Set (Fin n)) ≤ (0 : Fin n) := by
    -- sInf_le : a ∈ s → sInf s ≤ a
    exact sInf_le (by simpa using (Set.mem_univ (0 : Fin n)))
  -- Second, show 0 ≤ sInf univ using the characterization of sInf as greatest lower bound
  have h2 : (0 : Fin n) ≤ sInf (Set.univ : Set (Fin n)) := by
    -- le_sInf_iff : a ≤ sInf s ↔ ∀ b ∈ s, a ≤ b
    refine (le_sInf_iff).2 ?_
    intro b hb
    -- 0 is the bottom element in Fin n, so 0 ≤ b
    simpa using (bot_le : (⊥ : Fin n) ≤ b)
  exact le_antisymm h1 h2