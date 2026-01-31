import Mathlib

open CategoryTheory

namespace CategoryTheory

lemma comp_eq_id_of_isIso
    {V : Type*} [Category V]
    {M N : V} (f : M ⟶ N) [IsIso f] :
    f ≫ (inv f) = 𝟙 M := by
  simpa using (IsIso.hom_inv_id f)

end CategoryTheory