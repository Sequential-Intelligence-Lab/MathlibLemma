import Mathlib

namespace Matrix

/-- A placeholder notion of column equivalence between matrices.
    This is only defined so that the lemma `rank_eq_rank_of_colEquiv`
    below typechecks; it has no properties and is not used. -/
structure colEquiv {R m n} (A B : Matrix m n R) : Prop :=
  (dummy : True)

end Matrix

lemma Matrix.rank_eq_rank_of_colEquiv {R m n} [CommRing R]
    [Fintype m] [Fintype n]
    (A B : Matrix m n R)
    (h : Matrix.colEquiv A B) :
    A.rank = B.rank := by
  sorry