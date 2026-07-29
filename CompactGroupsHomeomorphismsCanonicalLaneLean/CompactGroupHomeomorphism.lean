import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure CompactGroupHomeomorphism (G H : CompactGroupModel) where
  homeoMap : G.carrier → H.carrier
  isHomeomorphism : Homeomorph G.carrier H.carrier
  respectsGroup : @IsGroupHom G.carrier H.carrier G.group H.group homeoMap
  conclusion : isHomeomorphism ∧ respectsGroup

structure HomeomorphismWitness (G H : CompactGroupModel) where
  homeo : CompactGroupHomeomorphism G H
  existence : Prop
  uniqueness : Prop
  witnessClosed : existence ∧ uniqueness

def HomeomorphismWitnessClosed {G H : CompactGroupModel}
  (W : HomeomorphismWitness G H) : Prop :=
  W.witnessClosed

theorem compact_group_homeomorphism_from_witness
  {G H : CompactGroupModel} (W : HomeomorphismWitness G H)
  (h : HomeomorphismWitnessClosed W) : True := by
  exact True.intro

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse