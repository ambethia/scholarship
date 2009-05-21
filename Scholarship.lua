local BOOKS = {
  "The Schools of Arcane Magic - Introduction",
  "The Schools of Arcane Magic - Abjuration",
  "The Schools of Arcane Magic - Conjuration",
  "The Schools of Arcane Magic - Divination",
  "The Schools of Arcane Magic - Enchantment",
  "The Schools of Arcane Magic - Illusion",
  "The Schools of Arcane Magic - Necromancy",
  "The Schools of Arcane Magic - Transmutation",
  "Blinking Rules & Regulations",
  "Bundle of Romantic Correspondences",
  "Damaged Apprentice Journal",
  "Excerpts from the Journal of Archmage Vargoth",
  "In Time, the Arcane Corrupts ALL!",
  "Journal of Archmage Antonidas",
  "Kirin Tor Monthly (March Issue)",
  "Kirin Tor Monthly (May Issue)",
  "Kirin Tor Monthly (November Issue)",
  "LAVA BLAST - by Pyroco",
  "Losses of the Third War",
  "On the Virtues of Magic",
  "Polymorphic Rules & Regulations",
  "Remedial Magic 101: Tips from the Pros",
  "STAY OUT!",
  "The Archmage Antonidas Part I",
  "The Archmage Antonidas Part II",
  "The Archmage Antonidas Part III",
  "The Dangers of Magic Abuse",
  "The Fate of Apprentice Argoly",
  "The Fluffy Bunny",
  "The Old Wizard's Almanac",
  "The Worst Mage in Dalaran - A Children's Book",
  "Thinking with Portals - A Memorandum on Proper Portal Usage",
  "To Do Today",
  "Weathered Diary - Dates from the Third War"
}

local f = CreateFrame("Frame")
f:SetScript("OnEvent", function()
  GameTooltip:HookScript("OnShow", function(self)
    local text = GameTooltipTextLeft1:GetText()
    for i, book in ipairs(BOOKS) do
      if book == text then PlaySound("LEVELUPSOUND") end
    end
  end);
end);

f:RegisterEvent("PLAYER_ENTERING_WORLD")
