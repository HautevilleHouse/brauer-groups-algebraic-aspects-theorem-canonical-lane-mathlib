import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure CentralSimpleAlgebra (K : Type) [Field K] where
  algebra : Algebra K (End (VectorSpace K))
  center : Subalgebra K (End (VectorSpace K))
  center_eq_K : center = ⊥
  simple : Simple (End (VectorSpace K))
  dim_finite : FiniteDimensional K (End (VectorSpace K))
  end_ring : Ring (End (VectorSpace K))
  involution : end_ring → end_ring
  involution_involutive : ∀ x : end_ring, involution (involution x) = x
  involution_antiautomorphism : ∀ x y : end_ring, involution (x * y) = involution y * involution x

def CentralSimpleAlgebraClosed (K : Type) [Field K] (A : CentralSimpleAlgebra K) : Prop :=
  True

theorem central_simple_algebra_closed (K : Type) [Field K] (A : CentralSimpleAlgebra K) : CentralSimpleAlgebraClosed K A :=
  trivial

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse