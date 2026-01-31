import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 43. Kernel of leftRegular norm is G-invariant submodule
lemma Representation.leftRegular_ker_norm_invariant
    {k G : Type*} [CommSemiring k] [Group G] [Fintype G] :
    ∀ g : G,
      LinearMap.ker (Representation.leftRegular k G).norm ≤
        (LinearMap.ker (Representation.leftRegular k G).norm).comap
          (Representation.leftRegular k G g) := by
  intro g x hx
  -- `hx` : x ∈ ker (leftRegular k G).norm
  -- goal: x ∈ comap (leftRegular k G g) (ker (leftRegular k G).norm)
  -- unfold membership in the comap: it means the image is in the kernel
  change (Representation.leftRegular k G).norm
      ((Representation.leftRegular k G g) x) = 0
  -- unfold membership in the kernel for `hx`
  change (Representation.leftRegular k G).norm x = 0 at hx
  -- use invariance of norm under the left regular action:
  -- for any representation ρ, norm is invariant under the action: ρ.norm (ρ g v) = ρ.norm v
  have hcomp :
      (Representation.leftRegular k G).norm
        ((Representation.leftRegular k G g) x)
        = (Representation.leftRegular k G).norm x := by
    -- this uses the general equivariance/invariance lemma for `norm`
    simpa using
      (Representation.norm_apply_smul
        (ρ := Representation.leftRegular k G) (g := g) (v := x))
  -- now rewrite using `hcomp` and finish with `hx`
  simpa [hcomp] using hx