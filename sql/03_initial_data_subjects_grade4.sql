-- ZEONデータベース構築スクリプト
-- 03_initial_data_subjects_grade4.sql
-- 4年次の科目データの登録


-- ゼミ（メディアアート）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-4-C4-1234-001',
  'ゼミ（メディアアート）',
  'メディアアートというアートの一分野について学び、理解し、独自の視点から表現する力を養う。まずはアートにおけるアイデアの出し方から学び、2回目からは制作とプレゼンテーションを繰り返す。中間と最終でプレゼンテーションを行う。自身の制作物を他者に説明し、評価してもらう機会を設ける。制作過程で必要となる資料収集や、修正と仕上げ、展示計画についても経験する。評価は、制作物が100％となる。',
  2028,
  '[{"name":"江渡 浩一郎","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '幅広い視点からメディアアートを学び、表現力を養い、多角的に物事を考える力を育む。デジタルツールを活用した情報収集能力、表現能力、コミュニケーション能力を磨く。自身の考えを他者に伝える能力、未来のメディアアートの可能性を探求する力、未来像を描く思考力などを身につける。制作過程で必要な技術や知識、価値観を理解する。独自のアイデアや成果を他者に理解してもらうためのプレゼンテーション能力も養う。',
  '制作物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (情報)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ガロア理論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-4-C3-1200-001',
  'ガロア理論',
  'なぜ5次以上の一般代数方程式は代数的な解の公式（あるいは解き方の手順）をもたないのか？このシンプルな問いに対する深遠な解答がガロア理論である。この科目ではガロア理論の本質を理解することを目標とする。
本科目は演習科目に位置付けられ、学生の積極的な参加、問題演習への取り組みが求められる。',
  2028,
  '[{"name":"加藤 文元","role":"教授"}]',
  4,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '● 代数的解法について理解し、5次以上の一般代数方程式は代数的解法を持たないという定理（アーベル・ルフィニの定理）について、その仕組みを理解する。
● 代数方程式のガロア群について理解し、ガロア群が代数方程式の解法の「困難さ」を統制していることを体得する。
● ガロア理論の基本定理の内容を理解し、簡単なガロア対応が計算できる。',
  'レポート70％ , グループワーク30％',
  '前提科目
群論、環論
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (数理)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- 数理論理学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-4-C3-1200-002',
  '数理論理学',
  '数理論理学を学ぶ上で基本的となる事項を学修する。まず一階述語論理の証明体系の例として自然演繹の体系NKを導入した後、論理式の解釈を定める「構造」を定義し、一階述語論理の完全性定理を証明する。授業の後半ではゲーデルの不完全性定理について、主張の意味するところと証明の概略を解説する。
本科目は演習科目に位置付けられ、学生の積極的な参加、問題演習への取り組みが求められる。',
  2028,
  '[{"name":"湯山 孝雄","role":"講師"}]',
  4,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '簡単な恒真式について、自然演繹の証明体系NKにおける導出図が描けるようになる。構造が論理式を充足することの定義を理解し、一階述語論理の完全性定理を証明とともに理解する。ゲーデルの不完全性定理の意味するところを理解し、その証明の概略を、各種用語の定義とともに説明できるようになる。',
  'レポート70％ , グループワーク30％',
  '前提科目
記号論理、集合と論理
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (数理)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- 量子からはじまる確率論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-4-C3-0034-003',
  '量子からはじまる確率論',
  'この世界に溢れる「確率的な現象」を捉えるための数学的理論が確率論であり、現代において確率論といえば通常は「測度論的確率論」を意味する。しかし、測度論的確率論は量子現象における「確率的な現象」をモデル化するには十分でないことが知られている。本授業では、測度論的確率論や量子論をその一部に含むほどに一般化された確率論である「非可換確率論」（量子確率論・代数的確率論とも呼ばれる）を、測度論的確率論や量子論の知識を前提とせずに学ぶ。非可換代数とその上の「状態」の概念を出発点にして量子論のエッセンスをつかみ、ヒルベルト空間などの解析に必要な数学的な道具立てに馴染んでいく中で、測度論的確率論・組合せ論・ネットワーク科学など関連する様々な分野の考え方をも身につけていくことを目指す。
本科目は演習科目に位置付けられ、学生の積極的な参加、問題演習への取り組みが求められる。',
  2028,
  '[{"name":"西郷 甲矢人","role":"教授"}]',
  4,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '非可換確率論の枠組みを明確に理解し、自分なりの「研究」を始めることのできる出発点に立つ。具体的には、非可換確率論とは何かを線型代数を知る人に説明できるようになり、それが自然科学にとって不可欠であることを量子論の基礎を知る人に説得できるようになり、古典的な確率論を知る人にその人にとって親しみのある話題との関係を紹介できるようになり、非可換確率論に関わる自分なりの研究課題を見つけ挑戦できるようになることを目指す。',
  'レポート70％ , グループワーク30％',
  '前提科目
数理構造の発見と活用、積分と測度
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (数理)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（数理科学特論ゼミⅠ）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-4-C4-1234-004',
  'ゼミ（数理科学特論ゼミⅠ）',
  'このゼミは、専門教育の最後の総仕上げとして位置づけられている。各人が専門書を読み、毎週担当教員の前で解説する。通常、2〜3人のグループを組み、担当教員から指導を受ける。専門書には詳細な説明が与えられていない場合もあり、論理の飛躍を埋め、整然とした解説を行う必要がある。そのためには、毎回の予習が重要であり、これまでの復習や未習事項の学修が求められる。',
  2028,
  '[{"name":"加藤 文元","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'このゼミを通じて、以下の能力を身につけることを目指す。
- 自力で専門書を読みこなす能力の獲得
- 論理的思考を通じて論旨を整え、解説する力の向上
- 予習を徹底し、既習事項の再学修や未習事項の自主学修に取り組む能力の獲得
ゼミは、学修の集大成であり、自己の興味を持ったテーマに基づいて取り組むことが重要である。学生自身が主体的な学びを行い、数学の世界に深く入り込むことで、専門書の解読力や解説力を向上させることが期待される。',
  'レポート70％ , グループワーク30％',
  '前提科目
なし
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (数理)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（数理科学特論ゼミⅡ）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-4-C4-1234-005',
  'ゼミ（数理科学特論ゼミⅡ）',
  'このゼミは、専門教育の最後の総仕上げとして位置づけられている。各人が専門書を読み、毎週担当教員の前で解説する。通常、2〜3人のグループを組み、担当教員から指導を受ける。専門書には詳細な説明が与えられていない場合もあり、論理の飛躍を埋め、整然とした解説を行う必要がある。そのためには、毎回の予習が重要であり、これまでの復習や未習事項の学修が求められる。',
  2028,
  '[{"name":"西郷 甲矢人","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'このゼミを通じて、以下の能力を身につけることを目指す。
- 自力で専門書を読みこなす能力の獲得
- 論理的思考を通じて論旨を整え、解説する力の向上
- 予習を徹底し、既習事項の再学修や未習事項の自主学修に取り組む能力の獲得
ゼミは、学修の集大成であり、自己の興味を持ったテーマに基づいて取り組むことが重要である。学生自身が主体的な学びを行い、数学の世界に深く入り込むことで、専門書の解読力や解説力を向上させることが期待される。',
  'レポート70％ , グループワーク30％',
  '前提科目
なし
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (数理)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（数理科学特論ゼミⅢ）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-4-C4-1234-006',
  'ゼミ（数理科学特論ゼミⅢ）',
  'このゼミは、専門教育の最後の総仕上げとして位置づけられている。各人が専門書を読み、毎週担当教員の前で解説する。通常、2〜3人のグループを組み、担当教員から指導を受ける。専門書には詳細な説明が与えられていない場合もあり、論理の飛躍を埋め、整然とした解説を行う必要がある。そのためには、毎回の予習が重要であり、これまでの復習や未習事項の学修が求められる。',
  2028,
  '[{"name":"作道 直幸","role":"准教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'このゼミを通じて、以下の能力を身につけることを目指す。
- 自力で専門書を読みこなす能力の獲得
- 論理的思考を通じて論旨を整え、解説する力の向上
- 予習を徹底し、既習事項の再学修や未習事項の自主学修に取り組む能力の獲得
ゼミは、学修の集大成であり、自己の興味を持ったテーマに基づいて取り組むことが重要である。学生自身が主体的な学びを行い、物理学の世界に深く入り込むことで、専門書の解読力や解説力を向上させることが期待される。',
  'レポート70％ , グループワーク30％',
  '前提科目
なし
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (数理)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（数理科学特論ゼミⅣ）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-4-C4-1234-007',
  'ゼミ（数理科学特論ゼミⅣ）',
  'このゼミは、専門教育の最後の総仕上げとして位置づけられている。各人が専門書を読み、毎週担当教員の前で解説する。通常、2〜3人のグループを組み、担当教員から指導を受ける。専門書には詳細な説明が与えられていない場合もあり、論理の飛躍を埋め、整然とした解説を行う必要がある。そのためには、毎回の予習が重要であり、これまでの復習や未習事項の学修が求められる。
（なお、この授業は英語で開講する。）',
  2028,
  '[{"name":"Ivan Fesenko","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'このゼミを通じて、以下の能力を身につけることを目指す。
- 自力で専門書を読みこなす能力の獲得
- 論理的思考を通じて論旨を整え、解説する力の向上
- 予習を徹底し、既習事項の再学修や未習事項の自主学修に取り組む能力の獲得
ゼミは、学修の集大成であり、自己の興味を持ったテーマに基づいて取り組むことが重要である。学生自身が主体的な学びを行い、数学の世界に深く入り込むことで、専門書の解読力や解説力を向上させることが期待される。',
  'レポート70％ , グループワーク30％',
  '前提科目
なし
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (数理)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（量子科学技術）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-4-C4-1234-008',
  'ゼミ（量子科学技術）',
  'このゼミでは、量子計算や量子物理学に関連する事柄について、理論的な研究課題を設定し、課題に取り組み、その結果を発表するための基礎力を養成する。前半では、必要となる基礎知識を専門書や論文を批判的に読むことで身につける。後半では、教員との対話を通じて課題を設定し、進捗報告とフィードバックを繰り返し、課題解決を図る。最後に、得られた研究成果または身につけた専門知識を資料にまとめて、最終成果物とする。優れた成果は学会等の対外発表を行う。',
  2028,
  '[{"name":"池田 達彦","role":"准教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'このゼミを通じて、以下の能力を身につけることを目指す。
- 情報を批判的に読み討論する力
- テクニカルライティング・プレゼンテーションの力
- 量子に関する専門的な知識および応用力',
  'レジュメ80％ , 最終発表20％',
  '前提科目
量子力学,量子コンピュータ演習
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["基盤リテラシー科目 (数理)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（展覧会のつくりかた）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-4-C4-1234-001',
  'ゼミ（展覧会のつくりかた）',
  '美術館で私たちが見る展覧会はどのように設計されているのだろうか？　展覧会の企画で最も重要なことは今の時代に相応しいテーマを設定することである。アートを語彙として行なうコミュニケーションでは世の中で起きていることを抽象化して説明する能力が求められる。授業の進め方として、ディスカッションが重要なのでグループ・ワークが中心となる。必要に応じてゲストを招いてお話をうかがう。',
  2028,
  '[{"name":"岩渕 潤子","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '展覧会をデザインする上で必要な知識を選択的に身につけていく。その際、異なる情報グループ同士を結びつけるストーリーを生み出す能力が求められるので、情報のノードを直感的に可視化する訓練を続けていく。いろいろな知識を瞬時に結びつける直感力を鍛えて企画に反映できるようにすることが目標になる。',
  'レポート・成果物（展覧会の企画書・工程案）100％',
  '前提科目
なし
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (文化・思想)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（文芸批評論）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-4-C4-1234-002',
  'ゼミ（文芸批評論）',
  '本授業では、国内外からの具体的な文学作品を取り上げ、文学作品の分析のために使われる主な文学理論について学ぶ。我々は単なる娯楽として読む文学作品を文学理論を使って批判的に解読することで、社会と文化の関係性について理解し、文学はいかにしてより良い社会づくりに貢献できるのかについて知識を得る。',
  2028,
  '[{"name":"Pradhan Gouranga Charan","role":"講師"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'この授業では、次のような知識・能力を身につける。（１）文学作品や文化を批判的に分析することで、現代社会が直面する様々な問題について主体的に考える力を身につける。（２）今後の文学作品を読むとき、社会現状と結び付けて解読することができる。（３）視野を広げることで、自文化を相対化することができる。',
  'レポート・成果物30%、グループ発表35％・グループワーク内での発言35％',
  '前提科目
日本文学Ⅰ、日本文学Ⅱ、日本文学Ⅲ
後継科目
特になし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (文化・思想)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（ファン文化論を捉えなおすための参加型文化論）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-4-C4-1234-003',
  'ゼミ（ファン文化論を捉えなおすための参加型文化論）',
  'ファン文化論を概観し、今までのファン文化論を新たな角度から捉え直すことを目指し、隣接の人文社会科学（文化人類学や社会学、文学、情報学）の概念、研究手法や方法論を用いて、学際的なスタンスから、現在の参加型文化（活動と文化）の調査を指導する。経験と議論の積み重ねから、これまで学んできた文化人類学やファン文化研究の概念などを学生が自身の課題に沿って捉えなおすことで、研究力を身につける。',
  2028,
  '[{"name":"Hernández Álvaro David","role":"講師"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '学生はグループで、文化人類学の研究手法や方法論を調査に用い、具体的な研究プロジェクトを行うことによって、理論への理解を深め、妥当性を考慮することで批判的思考力を促す。また、ファン文化論の視野を広め、学際的な視野を身につけ、ディスカッションや自分の研究を積み重ねることによって、課題設定能力を身につけ、調査、報告のコツを掴むことになる。',
  '試験35%、発表・発言35%、レポート・成果物30%',
  '前提科目
文化人類学Ⅲ
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (文化・思想)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（数理哲学）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-4-C4-1234-004',
  'ゼミ（数理哲学）',
  '一般に哲学は数学とは「水と油」のような関係だと考えられている。しかしこれは全くの間違いである。理論的思考を突き詰める哲学的思索には、数学と相通じるところが多くある（実際、デカルトやライプニッツなどの哲学者は、同時に数学者でもあった）。本ゼミでは、そのようなスピリットのもと、「哲学を数学的に行う」ことを演習形式で体得することを目指す。哲学的問題の数理モデリングに関するオリジナル教材を使用し、様々な数理的手法の「使い方」を体得するとともに、グループワーク等を通じて、そうした手法を用いて哲学的問題を自分でモデリングできるようになることを目指す。',
  2028,
  '[{"name":"大塚 淳","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '本ゼミの目標は、数学的道具立てを使って哲学的問題をモデリングできるようになることである。そのためにまず、様々な哲学的問題や概念を知り、その論理的構造やエッセンスを掴む。その一方で、 集合・束・位相・モノイド・群などの数学的概念に慣れ親しむとともに、それらを用いて物事を数理的にモデリングするためのセンスと勘所を養う。またグループワークやディスカッションなどで自分のアイデアを発表し、お互いから学ぶことで、論理的にものごとを整理し表現する技能を身につける。',
  '練習問題10%、中間発表20%、最終発表30%、レポート40%',
  '前提科目
哲学概論、科学哲学、集合と論理
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (文化・思想)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- 国際関係論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-4-C3-1200-001',
  '国際関係論',
  '国際関係論は、主権国家の外交交渉や軍事行動、国際社会の相互依存関係やグローバル化を理論的･実証的に研究する学問領域です。国際関係は帝国による支配や植民地統治、人種主義、戦争と覇権国の交代、核兵器と情報戦争、先進国と途上国の格差、政治的・文化的ナショナリズムといった厄介な問題に結びついています。世界で最初の国際関係論（International Relations）の講座は、第1次大戦後にウェールズ大学のウッドロー・ウィルソン国際政治学講座として設置されました。国際関係理論は、その当時からイデオロギーと世界観によって社会状況の解釈が異なる、ということを前提として作られています。国際関係論では所与の説明のループをどのように批判的に見るのかが重要です。この授業では、英国および米国のアカデミアで発展した国際関係論の主要な理論的枠組み、その研究史と問題関心、これと関連した国際政治や資本主義市場経済の歴史的研究を解説し、批判的な判断の前提となる理論的な素材を提供するものとします。またテーマをやや広く取って、安全保障と軍事、対外政策分析、ODAの実務についても解説します。',
  2028,
  '[{"name":"山内 康英","role":"教授"}]',
  4,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '国際関係では議論する者の立場や観点によって、国際社会や社会状況の見える姿が180度異なります。同じ対象物をどの視点からどのような方法で分析し、情報を収集するのか、抽象的な議論に拠って現実を比較考量する方法論を身につけることが大事です。このために現実主義、リベラリズム、構成主義といった国際関係論の基礎的な理論と文献を理解し、イデオロギーの観点を合わせて政治学や国際関係論を学修します。これによって国際化の進む昨今の社会情勢や現実的な未来に関する知見を得るとともに、今後の大学や大学院での研究および将来の職務に活かすことをこの授業の到達目的とします。',
  'レポート・成果物50%、発表・発言50％',
  '前提科目
情報社会論、情報社会の総合安全保障
後継科目
民主主義論、戦後日本史1、戦後日本史2

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (社会・ネットワーク)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（社会学）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-4-C4-1234-002',
  'ゼミ（社会学）',
  'この授業では、現代社会の「社会問題」と社会学の古典研究の輪読を行う。年間30回あるうちの15回は現代的な問題を扱い、残りの15回は社会学の古典をとりあげて、参加者とともに議論をおこなっていく。この授業では、なるべく参加者全員に文献のまとめ（レジュメ）を作成してもらい、そのまとめをもとに授業を進めていく予定である。',
  2028,
  '[{"name":"谷口 祐人","role":"講師"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'この授業を通じて、現代社会についての複眼的な「ものの見方」を育むと同時に、社会学の古典理解に基づく深い洞察力を養っていくことを目的とする。また、アカデミックスキルを前提としながら、本の要約方法や構造的な読み方・まとめ方についても訓練していく。',
  'レポート・成果物100％（毎回の授業後のレポート20％・最終レポート80％）',
  '前提科目
社会学Ⅱ
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (社会・ネットワーク)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（意思決定研究と実践）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-4-C4-1234-003',
  'ゼミ（意思決定研究と実践）',
  '意思決定（交渉を含む）分野での研究を1年間かけて行う。意思決定はあらゆる分野に絡むので、学術的な概念でも社会現象の分析も対象にする。また何か実践活動を行っても構わない。領域は経営のみならず政策でもよく、ありとあらゆるテーマを許容する。受講者自身の研究・実践活動なので、あくまで主体は受講者であり、講師は横から手助けをすることに集中する。基本的な講義は、研究の仕方について2回行うだけである。',
  2028,
  '[{"name":"印南 一路","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '意思決定や交渉、あるいは社会現象について、学生自身が興味のあるテーマを見つけ、そのテーマについて多様なものの考え方を用いて分析し、批判的に検討する能力を身につける。教員・クラスメートのフィードバックを踏まえ、自分なりの課題解決の実行、および新たな未来像を打ち立てることを目指す。テーマは自由であるが、研究の手法については社会科学分野の作法に従ったものを活用できるようになる。',
  '個人ベースでの研究・実践についての中間発表35％、学期末発表35％、クラスメートの発表に対するコメント15％、講師の質問に対する回答15％',
  '前提科目
意思決定の能力開発、交渉・合意形成概論、交渉・合意形成演習
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (社会・ネットワーク)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（異文化理解）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-4-C4-1234-004',
  'ゼミ（異文化理解）',
  '異文化理解分野での研究を1年間かけて行う。理論研究から社会やビジネスにおける事例分析まで、幅広い視点や多様なアプローチでの研究を促す。学生の自主性を尊重し、学生間の積極的な相互フィードバックやグループでの共同研究などを通じて、協業作業に欠かせないコミュニケーション能力の向上も目指す。希望する学生には、英語文献講読の指導も行なう。',
  2028,
  '[{"name":"田岡 恵","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'グローバル社会での活躍・貢献に欠かせない異文化理解の分野における関心事、テーマについて、特定の課題に関して集中して考察を深める機会を得る。社会科学分野における基礎的な研究手順に加え、特定の文化における多様な視点や行動に関して仮説を立て、学生自身の将来の留学やキャリアにおける行動指針を策定する上での十分な知識と意識を身につけることを目標とする。',
  'レポート・成果物40%、発言・発表（前半中間発表10%、前半最終発表20%、 後半中間発表10%、 後半最終発表20% ）',
  '前提科目
異文化理解
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (社会・ネットワーク)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- スタートアップ実践
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-4-C3-0034-001',
  'スタートアップ実践',
  '参加学生で組んだチームに対し、スタートアップの事業プランの立案を指導する。具体的には、社会課題、地域課題や自らの課題意識といった事業アイディアを具体的な事業コンセプトに育てるプロセスを演習を通じて教示し、その過程では、ユーザーインタビューを通じた仮説検証、ローコード・ノーコードツール、生成AIツールを活用したプロトタイプの作成などを指導する。',
  2028,
  '[{"name":"順次公開予定","role":"講師"}]',
  4,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'プロトタイピングやユーザーインタビューなどの手法、および生成AIツールの使用など、起業の実践に欠かせないアプローチやデジタルツールを自在に活用できるようになることを目指す。また、複数名でのプロジェクトワークを通じて、チームワークやコミュニケーション能力を高め、実践的な課題解決とゴール達成のスキルとマインドセットを身につけることができる。
',
  '事例研究（20％）、事業案のリサーチ等の個人ワーク（30％）、最終発表に向けたグループワーク（50％）',
  '前提科目
スタートアップ
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (経済・マーケット)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（ビジネスモデル分析）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-4-C4-1234-002',
  'ゼミ（ビジネスモデル分析）',
  '１ラウンドにつき３～４社の対象企業を設定し、それぞれの企業、業界が抱える課題を洗い出した上で、実践的な改革提案の策定プロセスを指導する。1～15回と16～30回の2ラウンドで実施する。具体的には消費者ヒアリング、データ分析、企業に対するヒアリング等をもとに提案を組み立てる。',
  2028,
  '[{"name":"上山 信一","role":"教授(副学長)"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '個別企業や消費者に対するヒアリング、アンケート等のタスクにおいて、デジタルツールを用いた情報収集や、有用な情報を引き出す対人コミュニケーション能力を身につけることを目指す。また、企業、業界が抱える課題の洗い出しでは、企業のビジネスモデルの刷新につながる改革案を提示することを最終ゴールとして、粘り強く考え抜く力を養う。',
  'レポート・成果物50%、発表・発言30%（授業で提示するケースに関する発表 前半、後半各15%）、 グループワーク20%',
  '前提科目
企業経営
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (経済・マーケット)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（経済発展を考える）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-4-C4-1234-003',
  'ゼミ（経済発展を考える）',
  '身近な町興しやベンチャービジネスの具体的な事例を考察しながら、開発経済の本質的問題を考える機会を提供する。東広島市、広島県、日本経済、アジア経済、グローバル経済等を具体的な題材とし、経済発展と貧困克服の問題点に関して深く議論し、政策の基本的視点、思想、手法、問題について考察を行う。',
  2028,
  '[{"name":"市橋 勝","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'デジタルツールを積極的に活用し、課題として指定された身近な町興しやベンチャービジネスの具体的な事例に関して情報収集を行い、高度なリサーチ能力を磨く。調査した内容に関し、まとめ、発表できるプレゼン資料を用意し、それらをもとにゼミで討論することを通じて、健全な批判的科学的精神と、相手を説得する表現能力、コミュニケーション能力を養う。',
  'レポート・成果物10%、グループワーク90%',
  '前提科目
マクロ経済学、マクロ経済分析演習
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (経済・マーケット)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（計量経済）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-4-C4-1234-004',
  'ゼミ（計量経済）',
  '計量経済学の有用性と分析の流れを理解する上で、社会や経済の現象をデータを用いて分析し解釈する手法を指導する。具体的には、非線形モデルの扱いやダミー変数の活用、回帰分析手法などを文献講読と身近な事例を使ったディスカッションを通じて教示する。また、決定要因の解明、効果の測定のテーマでは、グループワークとその発表を通じて、より深い実践的理解を促す。',
  2028,
  '[{"name":"渡邉 聡","role":"教授(学部長)(副学長)"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '経済や社会の様々な事象に対して、計量経済の理論と分析アプローチをもとに深く考察し、高い質の課題認識、および意思決定への洞察力を高めることを目指す。ディスカッションやグループ発表などの演習では、積極的にデジタルツールを活用して情報収集を行い、チームメンバーとの密なコミュニケーションを通じて、課題を解決し、ゴールを達成する力も強化する。',
  'レポート・成果物20%、グループワーク80%',
  '前提科目
経済入門、ミクロ経済学、事例から学ぶ統計学
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (経済・マーケット)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- ゼミ（幸福曲線）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-4-C4-1234-005',
  'ゼミ（幸福曲線）',
  '自分の過去の幸福曲線を分析し、幸福イベントや不幸イベントを積み上げて価値体系の樹形図を作る方法を教える。また、戦後の日本、アメリカ、ヨーロッパ、中国、世界の幸福曲線を作って現代のおおまかな流れを把握させる。最後に、コンサルティング会社や金融機関の業界としての業務やキャリアの現状を把握させ、自分の幸福曲線や価値体系を前提に現状世界における大学卒業後のコンサルティング会社や投資銀行などのキャリアの選択肢の可能性について考えさせる。',
  2028,
  '[{"name":"村藤 功","role":"教授"}]',
  4,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '幸福曲線や価値体系という自己を知るツールを用いて自分の過去の幸福の流れや価値体系を理解する上で、多様なものの考え方を用いて分析することができるようになる。そして、戦後の世界や日本の概要を理解したうえで、幸福を追求する大学卒業後のキャリアの選択肢について批判的に検討することができるようになる。特にコンサルティング業界や、銀行・証券会社・投資銀行などの現状と個人が幸福を追求できる将来のキャリアの選択肢について考える。',
  'レポート成果物20％（国の幸福曲線についてグループレポート提出・発表） , 発表・発言80％（幸福曲線についての個人発表20%, 価値体系の樹形図についての個人発表20% ,キャリア企画についての個人発表20% ,業界調査についての個人発表20%）',
  '前提科目
企業経営とファイナンス、企業価値創造とM＆A、財務分析演習
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["世界理解科目 (経済・マーケット)"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;


-- プロジェクト実践
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'PRJ-4-A3-1234-001',
  'プロジェクト実践',
  '実社会で起こっている問題や課題を取り上げ、課題解決のステップを学びながら仮説と検証を繰り返し、学問分野に捉われず学修者自身が多様なデジタル・ツールを駆使し解決策を追求していく授業である。講義と演習を組み合わせ、テーマに関係のある事柄を中心とした学生同士の対話を繰り返し、様々な考えに触れながら検討・分析する。最終的には自ら考えた解決策を発表・フィードバックを行い、学生同士が学びを深めていくアクティブラーニングである。',
  2028,
  '[{"name":"田岡 恵","role":"教授"},{"name":"Hernández Álvaro David","role":"講師"},{"name":"大野 元己","role":"助教"},{"name":"吉村 総一郎","role":"講師"},{"name":"瀬下 大輔","role":"講師"},{"name":"若山 正人","role":"教授(学長)"},{"name":"上山 信一","role":"教授(副学長)"},{"name":"渡邉 聡","role":"教授(学部長)(副学長)"},{"name":"大塚 淳","role":"教授"},{"name":"加藤 文元","role":"教授"},{"name":"木野 泰伸","role":"教授"},{"name":"西郷 甲矢人","role":"教授"},{"name":"順次公開予定","role":"講師"},{"name":"積山 薫","role":"教授"},{"name":"竹内 薫","role":"教授"},{"name":"氷川 竜介","role":"教授"},{"name":"細井 浩一","role":"教授"},{"name":"山口 真由","role":"教授"},{"name":"山内 康英","role":"教授"},{"name":"千葉 尚志","role":"准教授"},{"name":"順次公開予定","role":"講師"},{"name":"Pradhan Gouranga Charan","role":"講師"},{"name":"Ivan Fesenko","role":"教授"},{"name":"市橋 勝","role":"教授"},{"name":"岩渕 潤子","role":"教授"},{"name":"印南 一路","role":"教授"},{"name":"江渡 浩一郎","role":"教授"},{"name":"竹村 眞一","role":"教授"},{"name":"村藤 功","role":"教授"},{"name":"池田 達彦","role":"准教授"},{"name":"作道 直幸","role":"准教授"},{"name":"河野 慎","role":"講師（予定）"},{"name":"湯山 孝雄","role":"講師"},{"name":"梅崎 直也","role":"講師"},{"name":"折原 ダビデ竜","role":"講師"},{"name":"ガーバー 明菜","role":"助教"},{"name":"谷口 祐人","role":"講師"}]',
  4,
  '演習科目',
  '必修(主要)',
  4,
  '["1-2Q","3-4Q"]',
  '実社会で活躍する人材になるために、不確実で変化の激しい社会の中で課題となっている問題背景を適切に理解し、正解のない答えを自ら発見して解決する能力を養う。個々の能力や適性にあった専門的な知識とともに、様々な文化や価値観・倫理を理解し、先端のデジタルツール活用して情報を収集・編集し、適切なデータを扱いながら自ら主体的に未来像を打ち立て表現できるようになる。',
  'レポート・成果物（90%），相互フィードバック（10%）',
  '前提科目
なし
後継科目
なし

 2025年4月1日現在。内容が更新される場合があります。',
  '["卒業プロジェクト科目"]',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;

