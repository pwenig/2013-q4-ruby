LanguageFamily.create! name: "Indo-European"
LanguageFamily.create! name: "Malayo-Polynesian"
LanguageFamily.create! name: "Niger-Congo"
LanguageFamily.create! name: "Sino-Tibetan"

Language.create! \
  name: "Swahili",
  num_speakers: 140_000_000,
  language_family_id: LanguageFamily.find_by!(name: "Niger-Congo").id,
  main_script: "Latin",
  has_arabic_script: true

Language.create! \
  name: "Indonesian",
  num_speakers: 140_000_000,
  language_family_id: LanguageFamily.find_by!(name: "Malayo-Polynesian").id,
  main_script: "Latin",
  has_arabic_script: false

Language.create! \
  name: "Dari",
  num_speakers: 15_000_000,
  language_family_id: LanguageFamily.find_by!(name: "Indo-European").id,
  main_script: "Perso-Arabic",
  has_arabic_script: true
