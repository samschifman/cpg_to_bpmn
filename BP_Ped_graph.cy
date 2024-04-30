create
    (:Header_4_3:Header1 {name: "Patient Management on the Basis of Office BP", heading: "4.3", order: 1}),
    (:Header_4_3_a:Header2 {name: "Normal BP", heading: "4.3a", order: 2, text:"Normal BP:\n1. If BP is normal or normalizes after repeat readings (ie, BP <90th percentile), then no additional action is needed. Practitioners should measure the BP at the next routine well-child care visit."}),
    (:Header_4_3_b:Header2 {name: "Elevated BP", heading: "4.3b", order: 3, text: "Elevated BP:\n1. If the BP reading is at the elevated BP level (Table 3), lifestyle interventions should be recommended (ie, healthy diet, sleep, and physical activity); the measurement should be repeated in 6 months by auscultation. Nutrition and/or weight management referral should be considered as appropriate;\n2. If BP remains at the elevated BP level after 6 months, upper and lower extremity BP should be checked (right arm, left arm, and 1 leg), lifestyle counseling should be repeated, and BP should be rechecked in 6 months (ie, at the next well-child care visit) by auscultation;\n3. If BP continues at the elevated BP level after 12 months (eg, after 3 auscultatory measurements), ABPM should be ordered (if available), and diagnostic evaluation should be conducted (see Table 10 for a list of screening tests and the populations in which they should be performed). Consider subspecialty referral (ie, cardiology or nephrology) (see Table 11); and\n4. If BP normalizes at any point, return to annual BP screening at well-child care visits."}),
    (:Header_4_3_c:Header2 {name: "Stage 1 HTN", heading: "4.3c", order: 4, text: "Stage 1 HTN:\n1. If the BP reading is at the stage 1 HTN level (Table 3) and the patient is asymptomatic, provide lifestyle counseling and recheck the BP in 1 to 2 weeks by auscultation;\n2. If the BP reading is still at the stage 1 level, upper and lower extremity BP should be checked (right arm, left arm, and 1 leg), and BP should be rechecked in 3 months by auscultation. Nutrition and/or weight management referral should be considered as appropriate; and\n3. If BP continues to be at the stage 1 HTN level after 3 visits, ABPM should be ordered (if available), diagnostic evaluation should be conducted, and treatment should be initiated. Subspecialty referral should be considered (see Table 11)."}),
    (:Header_4_3_d:Header2 {name: "Stage 2 HTN", heading: "4.3d", order: 52, text: "Stage 2 HTN:\n1. If the BP reading is at the stage 2 HTN level (Table 3), upper and lower extremity BP should be checked (right arm, left arm, and 1 leg), lifestyle recommendations given, and the BP measurement should be repeated within 1 week. Alternatively, the patient could be referred to subspecialty care within 1 week;\n2. If the BP reading is still at the stage 2 HTN level when repeated, then diagnostic evaluation, including ABPM, should be conducted and treatment should be initiated, or the patient should be referred to subspecialty care within 1 week (see Table 11); and\n3. If the BP reading is at the stage 2 HTN level and the patient is symptomatic, or the BP is >30 mm Hg above the 95th percentile (or >180/120 mm Hg in an adolescent), refer to an immediate source of care, such as an emergency department (ED)."});

create
    (:Table_3:Table {name: "Updated Definitions of BP Categories and Stages", heading: "Table 3", order: 6, table: '\"For Children Aged 1–<13 y\",\"For Children Aged ≥13 y\"\n\"Normal BP: <90th percentile\",\"Normal BP: <120/<80 mm Hg\"\n\"Elevated BP: ≥90th percentile to <95th percentile or 120/80 mm Hg to <95th percentile (whichever is lower)\",\"Elevated BP: 120/<80 to 129/<80 mm Hg\"\n\"Stage 1 HTN: ≥95th percentile to <95th percentile + 12 mmHg or 130/80 to 139/89 mm Hg (whichever is lower)\",\"Stage 1 HTN: 130/80 to 139/89 mm Hg\"\n\"Stage 2 HTN: ≥95th percentile + 12 mm Hg or ≥140/90 mm Hg (whichever is lower)\",\"Stage 2 HTN: ≥140/90 mm Hg\"'}),
    (:Table_10:Table {name: "Screening Tests and Relevant Populations", heading: "Table 10", order: 7, table: '\"Patient Population\",\"Screening Test\"\n\"All patients\",\"Urinalysis\nChemistry panel, including electrolytes, blood urea nitrogen, and creatinine\nLipid profile (fasting or nonfasting to include high-density lipoproteina and total cholesterol)\nRenal ultrasonography in those <6 y of age or those with abnormal urinalysis or renal function\"\n\"In the obese (BMI >95th percentile) child or adolescent, in addition to the above\",\"Hemoglobin A1c (accepted screen for diabetes)\nAspartate transaminase and alanine transaminase (screen for fatty liver)\nFasting lipid panel (screen for dyslipidemia)\"\n\"Optional tests to be obtained on the basis of history, physical examination, and initial studies\",\"Fasting serum glucose for those at high risk for diabetes mellitus\nThyroid-stimulating hormone\nDrug screen\nSleep study (if loud snoring, daytime sleepiness, or reported history of apnea)\nComplete blood count, especially in those with growth delay or abnormal renal function\"\n'}),
    (:Table_11:Table {name: "Patient Evaluation and Management According to BP Level", heading: "Table 11", order: 8, table: '\"BP Category (See Table 3)\",\"BP Screening Schedule\",\"Lifestyle Counseling (Weight and Nutrition)\"\n\"Normal\",\"Annual\",\"X\"\n\"Elevated BP\",\"Initial measurement\",\"X\"\n\"\",\"Second measurement: repeat in 6 mo\",\"X\"\n\"\",\"Third measurement: repeat in 6 mo\",\"X\"\n\"Stage 1 HTN\",\"Initial measurement\",\"X\"\n\"\",\"Second measurement: repeat in 1–2 wk\",\"X\"\n\"\",\"Third measurement: repeat in 3 mo\",\"X\"\n\"Stage 2 HTNd\",\"Initial measurement\",\"X\"\n\"\",\"Second measurement: repeat, refer to specialty care within 1 wk\",\"X\"\n\nX recommended intervention; —, not applicable.\na ABPM is done to confirm HTN before initiating a diagnostic evaluation.\nb See Table 15 for recommended studies.\nc Treatment may be initiated by a primary care provider or subspecialist.\nd If the patient is symptomatic or BP is >30 mm Hg above the 95th percentile (or >180/120 mm Hg in an adolescent), send to an ED.\n'});


match (header:Header1), (sub:Header2)
create (header)-[:CONTAINS]->(sub);


match (header:Header_4_3_b), (sub:Table_3)
create (header)-[:REFERENCES]->(sub);

match (header:Header_4_3_b), (sub:Table_10)
create (header)-[:REFERENCES]->(sub);

match (header:Header_4_3_b), (sub:Table_11)
create (header)-[:REFERENCES]->(sub);

match (header:Header_4_3_c), (sub:Table_3)
create (header)-[:REFERENCES]->(sub);

match (header:Header_4_3_c), (sub:Table_11)
create (header)-[:REFERENCES]->(sub);

match (header:Header_4_3_d), (sub:Table_3)
create (header)-[:REFERENCES]->(sub);

match (header:Header_4_3_d), (sub:Table_11)
create (header)-[:REFERENCES]->(sub);



