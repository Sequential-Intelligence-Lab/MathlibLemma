import Mathlib

open CategoryTheory

/-- A coseparator in a preadditive category is nondegenerate in the second variable. -/
lemma IsCoseparator.nondegenerate_bilinear
  {C : Type*} [Category C] [Preadditive C]
  {G : C} (hG : CategoryTheory.IsCoseparator G) :
  ∀ {X : C} (f : G ⟶ X), (∀ g : X ⟶ G, f ≫ g = 0) → f = 0 := by
  intro X f hf
  -- Use the `IsCoseparator` property to compare `f` with `0 : G ⟶ X`
  apply hG (X := G) (Y := X) f 0
  -- Now we must show: for every object `G₁` in the singleton property,
  -- and every `h : X ⟶ G₁`, the compositions coincide.
  intro G₁ hG₁ h
  -- The singleton property identifies `G₁` with `G`
  cases hG₁
  -- Now `h : X ⟶ G`, so we can use the hypothesis `hf`
  have hfg : f ≫ h = 0 := hf h
  -- In a preadditive category, `(0 : G ⟶ X) ≫ h = 0`, so both sides are zero
  simpa [hfg]  -- rewrites RHS to `0` and uses `hfg` on the LHS