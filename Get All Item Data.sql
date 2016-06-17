select * from ItemContainers;

SELECT
    Items.Id,
    Items.Name,
    Items.Description,
    Items.IsEnabled,
    Items.Location,
    Items.Weight,
    Items.Quantity,
    Items.QuantityCap,
    Items.IconIndex,
    Items.SizeW,
    Items.SizeH,
    Items.LocationX,
    Items.LocationY,
    Items.LocationZ,
    --
    ItemContainers.ItemTotal,
    ItemContainers.ItemCap,
    ItemContainers.VolumeTotal,
    ItemContainers.VolumeCap,
    ItemContainers.WeightTotal,
    ItemContainers.WeightCap,
    --
    ItemTypes.*,
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
JOIN ItemTypes ON ItemTypes.ItemId = Items.Id
JOIN ItemContainers AS Cont ON Cont.ItemId = Items.Id AND ItemTypes.Container = 1
JOIN ItemEffects ON ItemEffects.ItemId = Items.Id
JOIN Effects ON Effects.Id = ItemEffects.EffectId
