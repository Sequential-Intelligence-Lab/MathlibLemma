import Mathlib

open CategoryTheory

namespace CategoryTheory

-- Use the existing `Action` from Mathlib with the correct arguments order.
@[reducible]
def MyAction (V G : Type _) [Category V] [Monoid G] :=
  Action V (MonCat.of G)

@[reducible]
def MyAction.Hom {V G : Type _} [Category V] [Monoid G]
    (M N : MyAction V G) :=
  M ⟶ N

lemma MyAction_Hom_isIso_of_comp_left_cancel
    {V : Type*} [Category V]
    {G : Type*} [Monoid G]
    {M N K : MyAction V G}
    (f : M ⟶ N) (g : N ⟶ K)
    (hg : IsIso g)
    (h : ∀ (h₁ h₂ : K ⟶ M), g ≫ h₁ = g ≫ h₂ → h₁ = h₂)
    (inv : K ⟶ M)
    (h₁ : f ≫ g ≫ inv = 𝟙 M)
    (h₂ : g ≫ inv ≫ f = 𝟙 N) :
    IsIso f := by
  -- We define the candidate inverse of `f` as `g ≫ inv : N ⟶ M`.
  -- Then we use `h₁` and `h₂` (after reassociation) as the two inverse laws.
  have h₁' : f ≫ (g ≫ inv) = 𝟙 M := by
    simpa [Category.assoc] using h₁
  have h₂' : (g ≫ inv) ≫ f = 𝟙 N := by
    simpa [Category.assoc] using h₂
  -- Build the isomorphism structure for `f`.
  refine ⟨⟨g ≫ inv, ?_, ?_⟩⟩
  · exact h₁'
  · exact h₂'

end CategoryTheory