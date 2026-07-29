import compactGroupsHomeomorphismsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompactWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse
