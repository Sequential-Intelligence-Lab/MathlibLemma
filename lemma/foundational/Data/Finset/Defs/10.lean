import Mathlib

lemma Finset.ssubset_of_subset_of_card_lt {α} [DecidableEq α] {s t : Finset α}
    (h₁ : s ⊆ t) (h₂ : s.card < t.card) : s ⊂ t := by
  classical
  -- `⊂` for finsets is `s ⊆ t ∧ ¬ t ⊆ s`
  refine ⟨h₁, ?_⟩
  intro hts
  -- From both inclusions we get equality of finsets
  have hEq : s = t := by
    ext a
    constructor <;> intro ha
    · exact h₁ ha
    · exact hts ha
  -- But then the card inequality becomes `s.card < s.card`, impossible
  have : ¬ s.card < t.card := by
    have h' : ¬ s.card < s.card := lt_irrefl _
    simpa [hEq] using h'
  exact this h₂