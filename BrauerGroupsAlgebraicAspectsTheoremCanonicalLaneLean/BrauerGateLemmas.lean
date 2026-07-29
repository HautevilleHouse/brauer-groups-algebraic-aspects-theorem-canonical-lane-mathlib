import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.BrauerGroupAdmissible

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

def gateClosed (K : Type) [Field K] (A : BrauerAdmissibleClass K) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (K : Type) [Field K] (A : BrauerAdmissibleClass K) : gateClosed K A :=
  A.gateWitness

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse