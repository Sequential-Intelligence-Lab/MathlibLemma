import Mathlib

namespace MeasureTheory

lemma lp_hasSum_mul_le
    {ι : Type*} (f g : ι → ℝ) :
    HasSum (fun i => ‖f i‖ * ‖g i‖) (∑' i, ‖f i‖ * ‖g i‖) := by
  sorry

end MeasureTheory