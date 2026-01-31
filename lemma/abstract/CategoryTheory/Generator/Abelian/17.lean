import Mathlib

open CategoryTheory

/-- Projective objects are closed under isomorphism. -/
lemma Projective_of_iso
  {C : Type*} [Category C]
  {X Y : C} (e : X ≅ Y) [Projective X] :
  Projective Y := by
  classical
  -- We construct the `factors` field for `Projective Y`.
  refine ⟨?_⟩
  intro E Z f g _
  -- `f : Y ⟶ Z`, `g : E ⟶ Z`, `[Epi g]`
  -- Use projectivity of `X` on `e.hom ≫ f : X ⟶ Z`.
  obtain ⟨hX, hhX⟩ :=
    (Projective.factors (P := X) (e.hom ≫ f) g)
  -- `hX : X ⟶ E`, `hhX : hX ≫ g = e.hom ≫ f`
  refine ⟨e.inv ≫ hX, ?_⟩
  -- Show `(e.inv ≫ hX) ≫ g = f`.
  calc
    (e.inv ≫ hX) ≫ g
        = e.inv ≫ (hX ≫ g) := by simp [Category.assoc]
    _   = e.inv ≫ (e.hom ≫ f) := by
          -- From `hhX : hX ≫ g = e.hom ≫ f`.
          simpa using congrArg (fun k => e.inv ≫ k) hhX
    _   = f := by
          -- `e.inv_hom_id_assoc f : e.inv ≫ e.hom ≫ f = f`.
          simpa using e.inv_hom_id_assoc f