import Mathlib

universe u v u' v'

open CategoryTheory

/-- An equivalence reflects separators. -/
lemma IsSeparator.of_isIso_inv_map
  {C : Type u} {D : Type u'} [Category.{v} C] [Category.{v'} D]
  (F : C ⥤ D) [F.IsEquivalence]
  {H : D} (hH : IsSeparator H) :
  IsSeparator (F.inv.obj H) := by
  sorry