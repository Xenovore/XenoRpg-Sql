SELECT
    Items.Id,
    Items.Name,
    Items.Description,
    Items.IsEnabled,
    Items.Weight,
    Items.Quantity,
    Items.QuantityCap,
    --
	UI.IconIndex,
	UI.IconFile,
	UI.ModelFile,
    UI.SizeW,
    UI.SizeH,
    UI.PosX,
    UI.PosY,
    UI.PosZ,
    UI.Location,
    --
    Cont.ItemTotal,
    Cont.ItemCap,
    Cont.VolumeTotal,
    Cont.VolumeCap,
    Cont.WeightTotal,
    Cont.WeightCap,
    --
    --ItemTypes.*,
    Effects.Name,
    Effects.Description,
    Effects.DamageMin,
    Effects.DamageMax,
    Effects.DamageScale,
    Effects.Range,
    Effects.AreaX,
    Effects.AreaY,
    Effects.AreaZ,
    Effects.CanRecharge,
    Effects.ChargeRate,
    Effects.CoolDown,
    Effects.DailyUses,
    Effects.Duration,
    Effects.Frequency,
    Effects.Form,
    Effects.PowerLevel,
    Effects.PowerCap,
    Effects.Source,
    Effects.TriggerTypeId
FROM Items
--JOIN ItemTypes ON ItemTypes.ItemId = Items.Id
JOIN ItemUI_ext AS UI ON UI.ItemId = Items.Id 
JOIN ItemContainers_ext AS Cont ON Cont.ItemId = Items.Id -- AND ItemTypes.Container = 1
JOIN ItemEffects_map ON ItemEffects_map.ItemId = Items.Id
JOIN Effects ON Effects.Id = ItemEffects_map.EffectId;
--TODO: EFFECTS NEEDS TO BE SEPARATE SINCE IT'S A LIST
