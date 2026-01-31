import Mathlib

/-- For elements of an algebra over a field, define a Newton map associated to the
characteristic polynomial of a matrix over the base field. -/
lemma Matrix.newtonMap_charpoly
    {K : Type*} [Field K]
    {S : Type*} [CommRing S] [Algebra K S]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n K) (x : S) :
    (Matrix.charpoly A).newtonMap x =
      x -
        (Ring.inverse
          ((Matrix.charpoly A).derivative.eval₂
            (algebraMap K S) x))
        * (Matrix.charpoly A).eval₂ (algebraMap K S) x := by
  sorry