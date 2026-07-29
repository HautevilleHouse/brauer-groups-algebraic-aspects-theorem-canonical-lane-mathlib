import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.BrauerGateLemmas

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

def ConstrainedBrauerClosure (K : Type) [Field K] (A : BrauerAdmissibleClass K) : Prop :=
  gateClosed K A

theorem constrained_brauer_endgame (K : Type) [Field K] (A : BrauerAdmissibleClass K) : ConstrainedBrauerClosure K A :=
  gate_from_admissible_class K A

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse