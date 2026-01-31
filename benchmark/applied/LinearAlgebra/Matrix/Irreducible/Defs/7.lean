import Mathlib

/-- Concatenating paths increases length additively. -/
lemma Quiver.Path.length_comp'
    {V : Type*} [Quiver V] {a b c : V}
    (p₁ : Quiver.Path a b) (p₂ : Quiver.Path b c) :
    (p₁.comp p₂).length = p₁.length + p₂.length := by
  sorry
