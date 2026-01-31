import Mathlib

open CategoryTheory

-- 1
lemma PreGaloisCategory.toAut_injective
    {C : Type*} [Category C] (F : C ⥤ FintypeCat)
    (G : Type*) [Group G] [∀ X, MulAction G (F.obj X)]
    [CategoryTheory.PreGaloisCategory.IsNaturalSMul F G]
    (h : ∀ (g : G), (∀ (X : C) (x : F.obj X), g • x = x) → g = 1) :
    Function.Injective (CategoryTheory.PreGaloisCategory.toAut F G) := by
  intro g g' hg
  -- Show that g⁻¹ * g' acts trivially on every object and element
  have hfix : ∀ (X : C) (x : F.obj X), (g⁻¹ * g') • x = x := by
    intro X x
    -- Use equality of natural automorphisms to get pointwise equality g • x = g' • x
    have hcomp :
        ((CategoryTheory.PreGaloisCategory.toAut F G g).hom.app X) x =
        ((CategoryTheory.PreGaloisCategory.toAut F G g').hom.app X) x :=
      congrArg (fun e : CategoryTheory.Aut F => e.hom.app X x) hg
    have hx : g • x = g' • x := by
      simpa using hcomp
    -- Now compute (g⁻¹ * g') • x
    calc
      (g⁻¹ * g') • x = g⁻¹ • (g' • x) := by
        simpa [mul_smul]
      _ = g⁻¹ • (g • x) := by
        simpa [hx]
      _ = x := by
        simpa using inv_smul_smul g x
  -- Apply the hypothesis h to g⁻¹ * g'
  have hres : g⁻¹ * g' = 1 := h (g⁻¹ * g') hfix
  -- Deduce g = g' from g⁻¹ * g' = 1
  have hmul := congrArg (fun k => g * k) hres
  -- Simplify both sides to get g' = g
  have hmul' : g' = g := by
    simpa [mul_assoc] using hmul
  -- Hence g = g'
  exact hmul'.symm