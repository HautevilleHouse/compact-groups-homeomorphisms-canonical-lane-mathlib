import CompactGroupsHomeomorphismsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def compactGroupProjection : Projection CompactGroupEndgameState :=
  {
    toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem compact_group_projection_idempotent (x : CompactGroupEndgameState) :
    compactGroupProjection.toFun (compactGroupProjection.toFun x) = compactGroupProjection.toFun x := by
  exact compactGroupProjection.idempotent x

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse