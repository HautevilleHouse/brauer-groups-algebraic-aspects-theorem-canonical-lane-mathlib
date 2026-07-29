import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let B : BrauerAdmittedObject := A.object
  B.centralSimple

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  let B : BrauerAdmittedObject := A.object
  B.conclusion.1

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse