-- ZEONデータベース構築スクリプト
-- 03_initial_data_subjects_grade1.sql
-- 1年次の科目データの登録


-- アカデミックリテラシー
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-1030-001',
  'アカデミックリテラシー',
  '本科目の目的は、学生が大学で学ぶための方法を身につけ、自立した学修者になることにある。 具体的には、（１）ZEN大学の履修制度やツールの使い方、（２）大学で学ぶための基礎的な技法（情報収集、レポート作成、口頭発表の方法とツール）、（３）他者と協働して課題解決するための方法について学び、今後四年間の学びの方針を確立する。',
  2025,
  '[{"name":"若山 正人","role":"教授(学長)"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["1Q","3Q"]',
  '本授業を通して、ZEN大学で学ぶことの意義・大学のカリキュラム制度について理解する。また、デジタルツールを用いた情報収集能力、表現能力、コミュニケーション能力を身につける。さらに、学生自身が課題や目標を設定し、新たな答えを探していくための方法を学修する。またこれらのスキルを用い、それぞれの学生が自立した学びを計画・実践できることを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
−

 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 現代社会と数学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-1030-002',
  '現代社会と数学',
  '本講義の目標は数学を様々な場面の問題解決や意思決定に活かすことである。しかしこれは容易ではない。１つには数学的スキルの欠如の問題がある。これに対応するのが第一部（ファイナンスとビジネス）、第二部（コンピュータ）の役割である。もう１つ難しいのは、ある問題場面に数学的な知識が使えると気がつけないことである。第三部（現代社会と数学）では数学が一般的なイメージより広い射程をもち、人文科学等の領域でも活躍することを紹介し、数理的な考え方を積極的に用いる態度の養成を狙っている。',
  2025,
  '[{"name":"若山 正人","role":"教授(学長)"},{"name":"瀬下 大輔","role":"講師"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["1Q","3Q"]',
  '・ファイナンス・ビジネス領域の問題に数学的な知識や考え方を活かして、実際に問題解決・意思決定に利用できる。
・データサイエンスの問題に数学的な知識や考え方を活かして、実際に問題解決・意思決定に利用できる。
・状況を数理的な目線で捉えようとすることを積極的に行い、問題解決や意思決定に生かそうとする態度を持っている。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
数学的思考とは何か、現代社会とサイエンス、数学史、数学の方法、データサイエンス概論、ITリテラシー、人工知能活用実践
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- ITリテラシー
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-1030-003',
  'ITリテラシー',
  'ITの必要性を理解し、基本知識を身につけ、インターネットやAIの活用について学ぶ。メディアの知識やデジタル市民としての教育法も学び、コンピューターや通信の仕組みを知ることで、社会人としてシステムを適切に活用する力を身につける。さらにシステム開発や経営、関連法律にも触れ、ITに関する幅広い知識を得ることができる。',
  2025,
  '[{"name":"吉村 総一郎","role":"講師"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["1Q","3Q"]',
  '社会人としてITを適切に活用するための知識を得ることで、デジタルツールを用いた情報収集能力、表現能力、コミュニケーション能力を用いて課題を解決するための力を養うことを目標とする。具体的に科目の中ではインターネットやAIの活用、システム開発のプロセスの知識、経営や法律に至るまでの幅広い視野を得て実践的なITスキルを磨き、最終的に情報処理推進機構のITパスポート試験合格相当以上の知識を得る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
情報セキュリティ概論、情報倫理と法、データサイエンス概論、インターネット概論、コンピュータ概論、情報処理概論
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- デジタルツールの使い方
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-0204-004',
  'デジタルツールの使い方',
  '高度に発達した昨今の情報社会では、どのような組織においてもデジタルツールが活用されており、デジタルツールを扱える人材の重要性が日に日に高まっている。デジタルツールの使い方では、様々なデジタルツールの基本的な使い方を実際に手を動かしながら学んでいく。また、情報モラル・情報セキュリティ・ネット犯罪等の対処法についても学んでいく。',
  2025,
  '[{"name":"櫻田 英樹","role":"教授"},{"name":"津野 貴大","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["2Q","4Q"]',
  'オフィスツール・業務自動化ツール・グラフィックツール・映像編集ツール・AIツールなどデジタルツールの基本的な使い方を学び、効果的に活用する方法を修得することを目標とする。また、情報収集・発信方法、情報モラル・セキュリティについても学修する。本科目の学修を通じて、効率的な情報処理やコミュニケーション、プロジェクト管理、デザイン、映像制作などのスキルが身につく。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
情報セキュリティ概論、情報倫理と法、データサイエンス概論、多言語ITコミュニケーション、動画クリエイター技術演習、Webデザイン演習
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 人工知能活用実践
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A2-1234-005',
  '人工知能活用実践',
  '近年、人工知能ツールは目覚ましい発展を遂げており、日常生活や業務で人工知能ツールを活用することは、現代社会で活躍するためには必須である。本科目では、人工知能ツールを用いた演習、ツールの使い方に関する考察、アウトプットについての議論を行い、人工知能ツールを賢く使うための基本を身に付ける。思考の整理、データの収集および分析、マルチメディアの作成などに積極的に人工知能を活用する姿勢を身につける。',
  2025,
  '[{"name":"ガーバー 明菜","role":"助教"},{"name":"瀬下 大輔","role":"講師"}]',
  1,
  'ライブ映像科目',
  '必修(主要)',
  2,
  '["1-2Q","3-4Q"]',
  '（１） 思考の幅を広げ、深さを増すために、アイデア出しや抜け漏れチェックの道具として人工知能を活用できる。
（２）データに基づいた意思決定を行うために、人工知能を用いてデータの収集・分析・可視化ができる。
（３） 言語以外の情報でアイデアを表現するために、人工知能を用いて画像・音楽・アニメーションなどを作成できる。',
  'レポート45％ , 制作物55%',
  '前提科目
−
後継科目
多言語ITコミュニケーション、情報セキュリティ概論、情報倫理と法、データサイエンス概論

 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 人文社会入門
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-1030-006',
  '人文社会入門',
  'ZEN大学で学べる「世界理解」科目群では、各学問分野の「ものの考え方」を深めることを意図している。具体的に、学問分野ごとの「ものの考え方」の多様性とはどのようなものか、各分野を学ぶことでどう世界の見方が拡がるか、それによって何がわかるようになるかを、分野ごとに各教員が説明する。',
  2025,
  '[{"name":"谷口 祐人","role":"講師"},{"name":"Hernández Álvaro David","role":"講師"},{"name":"細井 浩一","role":"教授"},{"name":"千葉 尚志","role":"准教授"},{"name":"積山 薫","role":"教授"},{"name":"竹内 薫","role":"教授"},{"name":"大塚 淳","role":"教授"},{"name":"山口 真由","role":"教授"},{"name":"Pradhan Gouranga Charan","role":"講師"},{"name":"山内 康英","role":"教授"},{"name":"大塚 英志","role":"教授"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["1Q","3Q"]',
  '各学問分野が、異なる方法で世界を切り取る方法論（ものの見方）を知り、多様な人文社会領域を学修する意義を理解する。それによって、ZEN大学で人文社会系の科目群をより有意義に学ぶための「頭の中の箱」を作る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
日本文学Ⅰ、文化人類学Ⅰ、心理学、社会学Ⅰ、法学Ⅰ、伝わる論理とコミュニケーション、企業経営、地域アントレプレナーシップ、地域課題の解決とイノベーション、現代社会とサイエンス、逆さ科学史
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 経済入門
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-0204-007',
  '経済入門',
  '経済学とは、さまざまな人や組織が市場でモノやお金を交換し合う行動を、前提や仮説をもとにモデル化し、シンプルかつ理論的に説明しようとする学問である。ミクロ経済学とマクロ経済学の基本的な概念を理解することにより、私たちの経済行動や意思決定の仕組みや本質的な目的について、論理的に考え理解する力を養う。',
  2025,
  '[{"name":"渡邉 聡","role":"教授(学部長)(副学長)"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["2Q","4Q"]',
  '経済学の基礎概念を学ぶことにより、社会や経済の現象を多様な視点で理解できるようになる。また現実の経済現象の見る際の批判的思考を育み、経済的な現象の理解と社会の未来への洞察を深めることを目指す。また、社会のみならず、ビジネスの世界における問題解決や戦略策定において、長期的視点にたって豊かな視野と洞察を活用できるようになる。
',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
企業経営、地域アントレプレナーシップ、地域課題の解決とイノベーション、ミクロ経済学、マクロ経済学

 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 情報セキュリティ概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-001',
  '情報セキュリティ概論',
  '情報化が高度に進み、一人で複数台インターネットデバイスを所持する現代社会において、情報セキュリティの重要性はますます高まっている。アカウントの乗っ取り被害やフィッシング詐欺など、情報セキュリティに関わる脅威は、身近な問題となりつつある。この授業では会社や普段の生活で必要な情報セキュリティの基礎知識と、その対応策を幅広く学ぶ。',
  2025,
  '[{"name":"岡田 雅之","role":"教授"},{"name":"津野 貴大","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '情報セキュリティの基本的な概念や原則、さまざまな脅威とその対策についての理解を深める。学校や職場、日常生活でITツールを活用する際に、適切な情報セキュリティを適用できるようになる。情報セキュリティマネジメント試験の試験範囲に準じた幅広い知識を修得することを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー
後継科目
−
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


-- 情報倫理と法
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-002',
  '情報倫理と法',
  '情報技術の発展とともに、それは、私たちに多くの恩恵をもたらしている一方で、トラブルや犯罪の発生など負の側面もある。この科目では、情報倫理の基礎から始め、情報通信社会の進化、メディアリテラシー、情報技術とセキュリティ、インターネットと犯罪、個人情報とプライバシー、企業と情報倫理等、様々な角度から情報倫理のあり方と関連する法について学修する。',
  2025,
  '[{"name":"木野 泰伸","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '本科目の学修を通じて、受講生は、現代社会における情報通信技術がもたらす光と影を理解し、情報倫理の重要性を理解し、他者を尊重し、それに関連する法的知識を身につけて、適切に行動できる能力を獲得することができるようになることを目標としている。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー
後継科目
−

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


-- データサイエンス概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-003',
  'データサイエンス概論',
  'データサイエンスの基礎知識を身につけることを目標にする。基礎的知識の中に個々の技術はもちろん含まれるが、それに加えて現代のデータサイエンスが成立した歴史的過程や統計学の考え方などのコンセプト理解も含めることにする。また、近年のホットトピックである、データ可視化の方法、統計学的因果推論的思考法についても取り扱うことで、データの表面的な理解でなく、構造を深く理解することができるよう講義を設計する。また講義の各所では適切にAIツールを用いる。AIツールは便利なものだが、その適切な使用には、統計学・機械学習の基礎知識が必要であることを学ぶ。',
  2025,
  '[{"name":"瀬下 大輔","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '基本的な分析法に習熟し、基礎的な集計、可視化、統計モデルを作成できる。データから何らかの知見を抽出し、真実を明らかにしていく過程に面白さを見出し、自ら積極的にデータ活用を志向する態度をもつ。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー
後継科目
統計学入門、機械学習概論
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


-- 数学的思考とは何か
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-004',
  '数学的思考とは何か',
  '古代から現代までを貫き、ますます多くの分野でその重要性が明らかになってきている数学的思考。「任意の」と「ある」という二語を切り口として数学の本質に迫った名著『数学入門』（著者は数学者であり後に偉大な哲学者として知られることとなったA. N.ホワイトヘッド）を手掛かりとしつつ、その後の数学の発展をも踏まえた現代的な立場から「数学的思考とは何か」を探求していく。',
  2025,
  '[{"name":"西郷 甲矢人","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  'ホワイトヘッド『数学入門』を手掛かりとして「変数」および「任意の」「ある」といった数学を貫く根本概念の意味を理解し「数学的思考」の本質を体得するとともに、100年以上前のホワイトヘッドの記述を現代的な立場から批判的に読むことを通して、受講者ひとりひとりが自らの数学的思考を育て役立てる方法を見つけられるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
現代社会と数学
後継科目
線形代数1、解析学1、位相空間

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


-- 数学史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-005',
  '数学史',
  '- 数学は第一級の歴史・考古学資料になり得る。
- 数学史とは各々の文明圏から生じた数学の伝統が征服と同化を繰り返しながら一つの「世界の数学」に収斂していく文化的征服史である。
● これらの基本理念に基づいて、各々の時代・地域の歴史を背景として浮き彫りになる数学の魅力を描き出すことを目的とする。数学を作ったのは誰か？各々の地域・時代で数学の担い手は誰だったのか？このように歴史の文脈の中で数学を見ることで、数学のイメージを刷新し、受講生各自の数学観を新たにしてもらうことを狙いとしている。',
  2025,
  '[{"name":"加藤 文元","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '● 人類史の中での人間の営みの変遷として数学史を捉える視点を獲得する。
● 歴史を通じて数学を通時的に捉えることによって、現代数学が古代や中世の数学を基礎にして成立したものであることを理解する。
● AIやデータサイエンスなど現代社会で活躍する様々な数理科学の基本的な考え方が形成された経緯について、一定の理解を得る。
● 社会の中で数学がどのような立ち位置と担い手によって発展し、その結果として現代社会の中でどのような役割を担っているのかについて、自分なりの理解に到達する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
現代社会と数学
後継科目
逆さ科学史

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


-- 現代社会とサイエンス
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-006',
  '現代社会とサイエンス',
  '現代人にとって身近な技術や問題に関心を持ち、それらの背後に潜む科学技術について学ぶことは、私たちの生活をより理解しやすく、かつ豊かにするために欠かせない要素である。現代社会を支える技術は日進月歩で進化しており、これらの技術を理解し活用することで、より効率的で持続可能な生活が実現できる。また、地球温暖化などの環境問題も、私たちの生活に深く関わっている。これらの問題に対処するためには、その原因や影響を理解し、科学技術の力を活用して解決策を見つけ出すことが不可欠である。このように、身近な技術や問題について学ぶことで、私たちが直面する課題に対処し、より良い未来を築くための知識と力を身につけることができる。',
  2025,
  '[{"name":"竹内 薫","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '広範な科学技術の研究開発現場を「見る」ことにより、抽象的な科学技術の概念を「具体的な何か」として実感してもらいたい。それにより、将来、学生が社会に出た際に、さまざまな科学技術に対して、「わからない」「自分とは関係ない」という態度ではなく、身近で具体的なものとして関わることができるようになってほしい。また、この授業を通じて、巷で流布されている根拠のないデマなどを見抜いて対処できる思考力を身につけてもらいたい。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
現代社会と数学
後継科目
日常に現れる物理学、逆さ科学史

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


-- 日本文学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-007',
  '日本文学Ⅰ',
  '本授業では、日本文学から具体的な作品・作家を取り上げ、比較文学的に解読して日本を相対化し、グローバル化された世界で活躍できるための基礎となる概念と思考について考えたい。高等教育における人文系の必要性が問われる最中、文学はなぜ我々現代人にとって必要不可欠なのか、そしてより良い社会造りに文学はいかに役に立つのかについて学んでいく。',
  2025,
  '[{"name":"Pradhan Gouranga Charan","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  'この授業を受講することで、まず、日本文学の主な作品について知識を得つつ、日本文学は海外でいかに受容され、どのように評価されてきたのかについて理解することができる。なお、文学作品の読解力が身につき、思考力、表現力も育成することができると同時に、我々が日常の中で直面する社会問題について主体的に考える能力を身につけることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
日本文学Ⅱ

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


-- 文化人類学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-008',
  '文化人類学Ⅰ',
  '人類はどのように世界を見てきて、これからどのように見ていくのだろうか？インターネットや情報技術はどのような影響を人間に与え、変えていくのだろうか？そのヒントは文化の研究にある。本授業では、文化人類学の発展を確認しながら、文化の多様性を見るための方法と基礎的な論点を取り上げる。方法論に関しては、具体例からどのようにして世界観を観察、記録、分析できるのかを取り扱っていき、その解釈を試みることを学ぶ。',
  2025,
  '[{"name":"Hernández Álvaro David","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '本授業では、文化とは何か、なぜ文化について考えるのが重要なのか、そして、どうすれば文化を研究できるのかを学ぶ。文化、コミュニケーション、神話、儀礼、宗教、身体や交換など、文化の考察における中心的なテーマの基礎を身につける。文化人類学の世界の見方を学ぶことによって、自分の身の回りの世界に異なる視点から触れることで、今まで考え付かなかった疑問を提唱し、様々な問題に新しい解答を試みる力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
文化人類学Ⅱ

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


-- 心理学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-009',
  '心理学',
  '人間の内面に光を当てて、心の働きについて理解したい。心理学は、そのような知的興味から誕生した。心理学では、個人（個体）の行動を観察することを重視しながら、なぜ人々はそのような行動をとるのか、なぜ人によって行動パターンが違うのか、人はどのように他者と関わっていくのか、といった問いに答えようとする。ここでは、遺伝的素地と環境との相互作用によって発達、変化していく心の側面を踏まえつつ、心の働きを解説する。',
  2025,
  '[{"name":"積山 薫","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '本授業を通して、心の内面を知るための科学的営みとしての心理学の方法論を理解し、科学的心理学と偽心理学の区別ができるようになる。また、心理学の各分野のトピックを学ぶことにより、自分の心のあり方が理解できるようになる。さらに、幼児やお年寄りなど自分と異なる世代の人の心のあり方にも想いを馳せられるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
認知神経科学

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


-- 社会学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-010',
  '社会学Ⅰ',
  '「社会」と聞いて、どのようなことを想像するだろうか？
「社会に出る」「社会人」「社会問題」「社会のために」など、「社会」という言葉にはさまざまな用法がある。
そうであるがゆえに、「社会」という存在は掴みづらい。しかし、わたしたちはそんな「社会」に生まれてから、死ぬまで関わり続けている。
この授業では、近くて遠い「社会」という存在について、人生においてどのように社会と関わるかという視点から考えていく。',
  2025,
  '[{"name":"谷口 祐人","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  'この授業を通じて、「社会」という概念の多様性について理解することができる。具体的には、「教育」「人間関係」「恋愛」「労働」「日常」「家族」「自己」「健康」「老い」など人間であれば経験しうる事柄が、いかに社会的なものであるかについて理解を深めることができる。さらに、こうした学修から社会学的な思考法の基礎を身につけることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
社会学Ⅱ

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


-- 法学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-011',
  '法学Ⅰ',
  'この授業は日常生活で出会う問題を、法律の視点から分析して解決するための概念を説明する。具体的には、①法律と日常生活の関わりからはじまって、②日常生活に特に身近である民事法の他、刑事法や労働法、消費者法、会社法等について現在または将来役に立ちうる知識を修得し、③法律を学ぶためのスキルを伝達する。',
  2025,
  '[{"name":"山口 真由","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '法律には独特の思考形式がある。そういうリーガルマインドを理解し、それをもとに物事を分析して、相手に説明する能力を身につける。そのうえで、法的な解決を批判的に検討し、よりよい結論を目指して、判例や学説などの法源を探し出す力を探求する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
法学Ⅱ

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


-- 伝わる論理とコミュニケーション
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-012',
  '伝わる論理とコミュニケーション',
  'そもそも「考える」ということはどんな過程であるのか、細かく分解して捉えていくことで、”漏れなくダブりなく”のMECEや、軸や切り口、フレームワークで捉える認識の方法論等を教示する。具体的には、「論理」を構造主義的に認識し、ロジックツリー、ピラミッドストラクチャーなどのフレームワークを理解し、さらにそれらに基づく論理的思考、分かり易く論理的なコミュニケーションのストーリーライン構築について解説する。',
  2025,
  '[{"name":"千葉 尚志","role":"准教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '何かを「学ぶ」際の根幹にある本質的な頭の使い方、また個々の学問領域で現下に広く深く検討・検証されている課題を熟考し、何某か解決に寄与できる新たな考察ができるようになる。「学ぶ」ことにおいて極めて本質的な物事の捉え方、新しい意味合いを考案・創成できる考えの深め方が身につくようになる。更にそうして深めて行く自分の新しい考えを、他者に適切、的確に伝えていけるコミュニケーション上の様々なコツを学修する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
−
※実務家教員担当科目
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


-- 企業経営
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-013',
  '企業経営',
  '本科目では企業が起業の後に他社との競争の中でいかに経営されていくかを、多数の企業の改革に参画してきた経営コンサルタントである講師の視点から教示する。具体的には小売り、遊園地、ホテル、機械メーカー、ネットビジネスなどの幅広い事例を通じ、マーケティングから戦略構築や組織運営、さらに経営再建などの経営手法を学ぶ。',
  2025,
  '[{"name":"上山 信一","role":"教授(副学長)"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '企業・経営関連のニュースや記事が無理なく理解できるようになることを目指す。また就職活動に際し、各企業の特徴や将来の展望、さらに業種や職種の特性を、より明確に理解できるようになる。卒業後に経験する企業との取引、投資などの局面では、批判的な視点から分析する力を発揮することで、重要なポイントが要領よく見抜けるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門、経済入門
後継科目
企業経営と会計、企業経営とファイナンス

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


-- アカデミックリテラシー
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-1030-001',
  'アカデミックリテラシー',
  '本科目の目的は、学生が大学で学ぶための方法を身につけ、自立した学修者になることにある。 具体的には、（１）ZEN大学の履修制度やツールの使い方、（２）大学で学ぶための基礎的な技法（情報収集、レポート作成、口頭発表の方法とツール）、（３）他者と協働して課題解決するための方法について学び、今後四年間の学びの方針を確立する。',
  2025,
  '[{"name":"若山 正人","role":"教授(学長)"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["1Q","3Q"]',
  '本授業を通して、ZEN大学で学ぶことの意義・大学のカリキュラム制度について理解する。また、デジタルツールを用いた情報収集能力、表現能力、コミュニケーション能力を身につける。さらに、学生自身が課題や目標を設定し、新たな答えを探していくための方法を学修する。またこれらのスキルを用い、それぞれの学生が自立した学びを計画・実践できることを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
−

 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 現代社会と数学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-1030-002',
  '現代社会と数学',
  '本講義の目標は数学を様々な場面の問題解決や意思決定に活かすことである。しかしこれは容易ではない。１つには数学的スキルの欠如の問題がある。これに対応するのが第一部（ファイナンスとビジネス）、第二部（コンピュータ）の役割である。もう１つ難しいのは、ある問題場面に数学的な知識が使えると気がつけないことである。第三部（現代社会と数学）では数学が一般的なイメージより広い射程をもち、人文科学等の領域でも活躍することを紹介し、数理的な考え方を積極的に用いる態度の養成を狙っている。',
  2025,
  '[{"name":"若山 正人","role":"教授(学長)"},{"name":"瀬下 大輔","role":"講師"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["1Q","3Q"]',
  '・ファイナンス・ビジネス領域の問題に数学的な知識や考え方を活かして、実際に問題解決・意思決定に利用できる。
・データサイエンスの問題に数学的な知識や考え方を活かして、実際に問題解決・意思決定に利用できる。
・状況を数理的な目線で捉えようとすることを積極的に行い、問題解決や意思決定に生かそうとする態度を持っている。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
数学的思考とは何か、現代社会とサイエンス、数学史、数学の方法、データサイエンス概論、ITリテラシー、人工知能活用実践
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- ITリテラシー
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-1030-003',
  'ITリテラシー',
  'ITの必要性を理解し、基本知識を身につけ、インターネットやAIの活用について学ぶ。メディアの知識やデジタル市民としての教育法も学び、コンピューターや通信の仕組みを知ることで、社会人としてシステムを適切に活用する力を身につける。さらにシステム開発や経営、関連法律にも触れ、ITに関する幅広い知識を得ることができる。',
  2025,
  '[{"name":"吉村 総一郎","role":"講師"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["1Q","3Q"]',
  '社会人としてITを適切に活用するための知識を得ることで、デジタルツールを用いた情報収集能力、表現能力、コミュニケーション能力を用いて課題を解決するための力を養うことを目標とする。具体的に科目の中ではインターネットやAIの活用、システム開発のプロセスの知識、経営や法律に至るまでの幅広い視野を得て実践的なITスキルを磨き、最終的に情報処理推進機構のITパスポート試験合格相当以上の知識を得る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
情報セキュリティ概論、情報倫理と法、データサイエンス概論、インターネット概論、コンピュータ概論、情報処理概論
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- デジタルツールの使い方
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-0204-004',
  'デジタルツールの使い方',
  '高度に発達した昨今の情報社会では、どのような組織においてもデジタルツールが活用されており、デジタルツールを扱える人材の重要性が日に日に高まっている。デジタルツールの使い方では、様々なデジタルツールの基本的な使い方を実際に手を動かしながら学んでいく。また、情報モラル・情報セキュリティ・ネット犯罪等の対処法についても学んでいく。',
  2025,
  '[{"name":"櫻田 英樹","role":"教授"},{"name":"津野 貴大","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["2Q","4Q"]',
  'オフィスツール・業務自動化ツール・グラフィックツール・映像編集ツール・AIツールなどデジタルツールの基本的な使い方を学び、効果的に活用する方法を修得することを目標とする。また、情報収集・発信方法、情報モラル・セキュリティについても学修する。本科目の学修を通じて、効率的な情報処理やコミュニケーション、プロジェクト管理、デザイン、映像制作などのスキルが身につく。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
情報セキュリティ概論、情報倫理と法、データサイエンス概論、多言語ITコミュニケーション、動画クリエイター技術演習、Webデザイン演習
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 人工知能活用実践
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A2-1234-005',
  '人工知能活用実践',
  '近年、人工知能ツールは目覚ましい発展を遂げており、日常生活や業務で人工知能ツールを活用することは、現代社会で活躍するためには必須である。本科目では、人工知能ツールを用いた演習、ツールの使い方に関する考察、アウトプットについての議論を行い、人工知能ツールを賢く使うための基本を身に付ける。思考の整理、データの収集および分析、マルチメディアの作成などに積極的に人工知能を活用する姿勢を身につける。',
  2025,
  '[{"name":"ガーバー 明菜","role":"助教"},{"name":"瀬下 大輔","role":"講師"}]',
  1,
  'ライブ映像科目',
  '必修(主要)',
  2,
  '["1-2Q","3-4Q"]',
  '（１） 思考の幅を広げ、深さを増すために、アイデア出しや抜け漏れチェックの道具として人工知能を活用できる。
（２）データに基づいた意思決定を行うために、人工知能を用いてデータの収集・分析・可視化ができる。
（３） 言語以外の情報でアイデアを表現するために、人工知能を用いて画像・音楽・アニメーションなどを作成できる。',
  'レポート45％ , 制作物55%',
  '前提科目
−
後継科目
多言語ITコミュニケーション、情報セキュリティ概論、情報倫理と法、データサイエンス概論

 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 人文社会入門
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-1030-006',
  '人文社会入門',
  'ZEN大学で学べる「世界理解」科目群では、各学問分野の「ものの考え方」を深めることを意図している。具体的に、学問分野ごとの「ものの考え方」の多様性とはどのようなものか、各分野を学ぶことでどう世界の見方が拡がるか、それによって何がわかるようになるかを、分野ごとに各教員が説明する。',
  2025,
  '[{"name":"谷口 祐人","role":"講師"},{"name":"Hernández Álvaro David","role":"講師"},{"name":"細井 浩一","role":"教授"},{"name":"千葉 尚志","role":"准教授"},{"name":"積山 薫","role":"教授"},{"name":"竹内 薫","role":"教授"},{"name":"大塚 淳","role":"教授"},{"name":"山口 真由","role":"教授"},{"name":"Pradhan Gouranga Charan","role":"講師"},{"name":"山内 康英","role":"教授"},{"name":"大塚 英志","role":"教授"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["1Q","3Q"]',
  '各学問分野が、異なる方法で世界を切り取る方法論（ものの見方）を知り、多様な人文社会領域を学修する意義を理解する。それによって、ZEN大学で人文社会系の科目群をより有意義に学ぶための「頭の中の箱」を作る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
日本文学Ⅰ、文化人類学Ⅰ、心理学、社会学Ⅰ、法学Ⅰ、伝わる論理とコミュニケーション、企業経営、地域アントレプレナーシップ、地域課題の解決とイノベーション、現代社会とサイエンス、逆さ科学史
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 経済入門
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INT-1-A1-0204-007',
  '経済入門',
  '経済学とは、さまざまな人や組織が市場でモノやお金を交換し合う行動を、前提や仮説をもとにモデル化し、シンプルかつ理論的に説明しようとする学問である。ミクロ経済学とマクロ経済学の基本的な概念を理解することにより、私たちの経済行動や意思決定の仕組みや本質的な目的について、論理的に考え理解する力を養う。',
  2025,
  '[{"name":"渡邉 聡","role":"教授(学部長)(副学長)"}]',
  1,
  'オンデマンド科目',
  '必修(主要)',
  2,
  '["2Q","4Q"]',
  '経済学の基礎概念を学ぶことにより、社会や経済の現象を多様な視点で理解できるようになる。また現実の経済現象の見る際の批判的思考を育み、経済的な現象の理解と社会の未来への洞察を深めることを目指す。また、社会のみならず、ビジネスの世界における問題解決や戦略策定において、長期的視点にたって豊かな視野と洞察を活用できるようになる。
',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
企業経営、地域アントレプレナーシップ、地域課題の解決とイノベーション、ミクロ経済学、マクロ経済学

 2025年4月1日現在。内容が更新される場合があります。',
  '["導入科目"]',
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


-- 情報セキュリティ概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-001',
  '情報セキュリティ概論',
  '情報化が高度に進み、一人で複数台インターネットデバイスを所持する現代社会において、情報セキュリティの重要性はますます高まっている。アカウントの乗っ取り被害やフィッシング詐欺など、情報セキュリティに関わる脅威は、身近な問題となりつつある。この授業では会社や普段の生活で必要な情報セキュリティの基礎知識と、その対応策を幅広く学ぶ。',
  2025,
  '[{"name":"岡田 雅之","role":"教授"},{"name":"津野 貴大","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '情報セキュリティの基本的な概念や原則、さまざまな脅威とその対策についての理解を深める。学校や職場、日常生活でITツールを活用する際に、適切な情報セキュリティを適用できるようになる。情報セキュリティマネジメント試験の試験範囲に準じた幅広い知識を修得することを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー
後継科目
−
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


-- 情報倫理と法
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-002',
  '情報倫理と法',
  '情報技術の発展とともに、それは、私たちに多くの恩恵をもたらしている一方で、トラブルや犯罪の発生など負の側面もある。この科目では、情報倫理の基礎から始め、情報通信社会の進化、メディアリテラシー、情報技術とセキュリティ、インターネットと犯罪、個人情報とプライバシー、企業と情報倫理等、様々な角度から情報倫理のあり方と関連する法について学修する。',
  2025,
  '[{"name":"木野 泰伸","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '本科目の学修を通じて、受講生は、現代社会における情報通信技術がもたらす光と影を理解し、情報倫理の重要性を理解し、他者を尊重し、それに関連する法的知識を身につけて、適切に行動できる能力を獲得することができるようになることを目標としている。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー
後継科目
−

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


-- データサイエンス概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-003',
  'データサイエンス概論',
  'データサイエンスの基礎知識を身につけることを目標にする。基礎的知識の中に個々の技術はもちろん含まれるが、それに加えて現代のデータサイエンスが成立した歴史的過程や統計学の考え方などのコンセプト理解も含めることにする。また、近年のホットトピックである、データ可視化の方法、統計学的因果推論的思考法についても取り扱うことで、データの表面的な理解でなく、構造を深く理解することができるよう講義を設計する。また講義の各所では適切にAIツールを用いる。AIツールは便利なものだが、その適切な使用には、統計学・機械学習の基礎知識が必要であることを学ぶ。',
  2025,
  '[{"name":"瀬下 大輔","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '基本的な分析法に習熟し、基礎的な集計、可視化、統計モデルを作成できる。データから何らかの知見を抽出し、真実を明らかにしていく過程に面白さを見出し、自ら積極的にデータ活用を志向する態度をもつ。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー
後継科目
統計学入門、機械学習概論
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


-- 数学的思考とは何か
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-004',
  '数学的思考とは何か',
  '古代から現代までを貫き、ますます多くの分野でその重要性が明らかになってきている数学的思考。「任意の」と「ある」という二語を切り口として数学の本質に迫った名著『数学入門』（著者は数学者であり後に偉大な哲学者として知られることとなったA. N.ホワイトヘッド）を手掛かりとしつつ、その後の数学の発展をも踏まえた現代的な立場から「数学的思考とは何か」を探求していく。',
  2025,
  '[{"name":"西郷 甲矢人","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  'ホワイトヘッド『数学入門』を手掛かりとして「変数」および「任意の」「ある」といった数学を貫く根本概念の意味を理解し「数学的思考」の本質を体得するとともに、100年以上前のホワイトヘッドの記述を現代的な立場から批判的に読むことを通して、受講者ひとりひとりが自らの数学的思考を育て役立てる方法を見つけられるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
現代社会と数学
後継科目
線形代数1、解析学1、位相空間

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


-- 数学史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-005',
  '数学史',
  '- 数学は第一級の歴史・考古学資料になり得る。
- 数学史とは各々の文明圏から生じた数学の伝統が征服と同化を繰り返しながら一つの「世界の数学」に収斂していく文化的征服史である。
● これらの基本理念に基づいて、各々の時代・地域の歴史を背景として浮き彫りになる数学の魅力を描き出すことを目的とする。数学を作ったのは誰か？各々の地域・時代で数学の担い手は誰だったのか？このように歴史の文脈の中で数学を見ることで、数学のイメージを刷新し、受講生各自の数学観を新たにしてもらうことを狙いとしている。',
  2025,
  '[{"name":"加藤 文元","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '● 人類史の中での人間の営みの変遷として数学史を捉える視点を獲得する。
● 歴史を通じて数学を通時的に捉えることによって、現代数学が古代や中世の数学を基礎にして成立したものであることを理解する。
● AIやデータサイエンスなど現代社会で活躍する様々な数理科学の基本的な考え方が形成された経緯について、一定の理解を得る。
● 社会の中で数学がどのような立ち位置と担い手によって発展し、その結果として現代社会の中でどのような役割を担っているのかについて、自分なりの理解に到達する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
現代社会と数学
後継科目
逆さ科学史

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


-- 現代社会とサイエンス
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-006',
  '現代社会とサイエンス',
  '現代人にとって身近な技術や問題に関心を持ち、それらの背後に潜む科学技術について学ぶことは、私たちの生活をより理解しやすく、かつ豊かにするために欠かせない要素である。現代社会を支える技術は日進月歩で進化しており、これらの技術を理解し活用することで、より効率的で持続可能な生活が実現できる。また、地球温暖化などの環境問題も、私たちの生活に深く関わっている。これらの問題に対処するためには、その原因や影響を理解し、科学技術の力を活用して解決策を見つけ出すことが不可欠である。このように、身近な技術や問題について学ぶことで、私たちが直面する課題に対処し、より良い未来を築くための知識と力を身につけることができる。',
  2025,
  '[{"name":"竹内 薫","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '広範な科学技術の研究開発現場を「見る」ことにより、抽象的な科学技術の概念を「具体的な何か」として実感してもらいたい。それにより、将来、学生が社会に出た際に、さまざまな科学技術に対して、「わからない」「自分とは関係ない」という態度ではなく、身近で具体的なものとして関わることができるようになってほしい。また、この授業を通じて、巷で流布されている根拠のないデマなどを見抜いて対処できる思考力を身につけてもらいたい。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
現代社会と数学
後継科目
日常に現れる物理学、逆さ科学史

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


-- 日本文学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-007',
  '日本文学Ⅰ',
  '本授業では、日本文学から具体的な作品・作家を取り上げ、比較文学的に解読して日本を相対化し、グローバル化された世界で活躍できるための基礎となる概念と思考について考えたい。高等教育における人文系の必要性が問われる最中、文学はなぜ我々現代人にとって必要不可欠なのか、そしてより良い社会造りに文学はいかに役に立つのかについて学んでいく。',
  2025,
  '[{"name":"Pradhan Gouranga Charan","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  'この授業を受講することで、まず、日本文学の主な作品について知識を得つつ、日本文学は海外でいかに受容され、どのように評価されてきたのかについて理解することができる。なお、文学作品の読解力が身につき、思考力、表現力も育成することができると同時に、我々が日常の中で直面する社会問題について主体的に考える能力を身につけることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
日本文学Ⅱ

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


-- 文化人類学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-008',
  '文化人類学Ⅰ',
  '人類はどのように世界を見てきて、これからどのように見ていくのだろうか？インターネットや情報技術はどのような影響を人間に与え、変えていくのだろうか？そのヒントは文化の研究にある。本授業では、文化人類学の発展を確認しながら、文化の多様性を見るための方法と基礎的な論点を取り上げる。方法論に関しては、具体例からどのようにして世界観を観察、記録、分析できるのかを取り扱っていき、その解釈を試みることを学ぶ。',
  2025,
  '[{"name":"Hernández Álvaro David","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '本授業では、文化とは何か、なぜ文化について考えるのが重要なのか、そして、どうすれば文化を研究できるのかを学ぶ。文化、コミュニケーション、神話、儀礼、宗教、身体や交換など、文化の考察における中心的なテーマの基礎を身につける。文化人類学の世界の見方を学ぶことによって、自分の身の回りの世界に異なる視点から触れることで、今まで考え付かなかった疑問を提唱し、様々な問題に新しい解答を試みる力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
文化人類学Ⅱ

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


-- 心理学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-009',
  '心理学',
  '人間の内面に光を当てて、心の働きについて理解したい。心理学は、そのような知的興味から誕生した。心理学では、個人（個体）の行動を観察することを重視しながら、なぜ人々はそのような行動をとるのか、なぜ人によって行動パターンが違うのか、人はどのように他者と関わっていくのか、といった問いに答えようとする。ここでは、遺伝的素地と環境との相互作用によって発達、変化していく心の側面を踏まえつつ、心の働きを解説する。',
  2025,
  '[{"name":"積山 薫","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '本授業を通して、心の内面を知るための科学的営みとしての心理学の方法論を理解し、科学的心理学と偽心理学の区別ができるようになる。また、心理学の各分野のトピックを学ぶことにより、自分の心のあり方が理解できるようになる。さらに、幼児やお年寄りなど自分と異なる世代の人の心のあり方にも想いを馳せられるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
認知神経科学

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


-- 社会学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-010',
  '社会学Ⅰ',
  '「社会」と聞いて、どのようなことを想像するだろうか？
「社会に出る」「社会人」「社会問題」「社会のために」など、「社会」という言葉にはさまざまな用法がある。
そうであるがゆえに、「社会」という存在は掴みづらい。しかし、わたしたちはそんな「社会」に生まれてから、死ぬまで関わり続けている。
この授業では、近くて遠い「社会」という存在について、人生においてどのように社会と関わるかという視点から考えていく。',
  2025,
  '[{"name":"谷口 祐人","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  'この授業を通じて、「社会」という概念の多様性について理解することができる。具体的には、「教育」「人間関係」「恋愛」「労働」「日常」「家族」「自己」「健康」「老い」など人間であれば経験しうる事柄が、いかに社会的なものであるかについて理解を深めることができる。さらに、こうした学修から社会学的な思考法の基礎を身につけることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
社会学Ⅱ

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


-- 法学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-011',
  '法学Ⅰ',
  'この授業は日常生活で出会う問題を、法律の視点から分析して解決するための概念を説明する。具体的には、①法律と日常生活の関わりからはじまって、②日常生活に特に身近である民事法の他、刑事法や労働法、消費者法、会社法等について現在または将来役に立ちうる知識を修得し、③法律を学ぶためのスキルを伝達する。',
  2025,
  '[{"name":"山口 真由","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '法律には独特の思考形式がある。そういうリーガルマインドを理解し、それをもとに物事を分析して、相手に説明する能力を身につける。そのうえで、法的な解決を批判的に検討し、よりよい結論を目指して、判例や学説などの法源を探し出す力を探求する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
法学Ⅱ

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


-- 伝わる論理とコミュニケーション
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-1030-012',
  '伝わる論理とコミュニケーション',
  'そもそも「考える」ということはどんな過程であるのか、細かく分解して捉えていくことで、”漏れなくダブりなく”のMECEや、軸や切り口、フレームワークで捉える認識の方法論等を教示する。具体的には、「論理」を構造主義的に認識し、ロジックツリー、ピラミッドストラクチャーなどのフレームワークを理解し、さらにそれらに基づく論理的思考、分かり易く論理的なコミュニケーションのストーリーライン構築について解説する。',
  2025,
  '[{"name":"千葉 尚志","role":"准教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '何かを「学ぶ」際の根幹にある本質的な頭の使い方、また個々の学問領域で現下に広く深く検討・検証されている課題を熟考し、何某か解決に寄与できる新たな考察ができるようになる。「学ぶ」ことにおいて極めて本質的な物事の捉え方、新しい意味合いを考案・創成できる考えの深め方が身につくようになる。更にそうして深めて行く自分の新しい考えを、他者に適切、的確に伝えていけるコミュニケーション上の様々なコツを学修する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門
後継科目
−
※実務家教員担当科目
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


-- 企業経営
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-013',
  '企業経営',
  '本科目では企業が起業の後に他社との競争の中でいかに経営されていくかを、多数の企業の改革に参画してきた経営コンサルタントである講師の視点から教示する。具体的には小売り、遊園地、ホテル、機械メーカー、ネットビジネスなどの幅広い事例を通じ、マーケティングから戦略構築や組織運営、さらに経営再建などの経営手法を学ぶ。',
  2025,
  '[{"name":"上山 信一","role":"教授(副学長)"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '企業・経営関連のニュースや記事が無理なく理解できるようになることを目指す。また就職活動に際し、各企業の特徴や将来の展望、さらに業種や職種の特性を、より明確に理解できるようになる。卒業後に経験する企業との取引、投資などの局面では、批判的な視点から分析する力を発揮することで、重要なポイントが要領よく見抜けるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門、経済入門
後継科目
企業経営と会計、企業経営とファイナンス

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


-- 地域アントレプレナーシップ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-014',
  '地域アントレプレナーシップ',
  '地域は、農業や食、地場産業などの育成や事業承継、さらに少子化、高齢化、人手不足などさまざまな課題を抱えている。こうした課題解決の担い手は一義的には自治体や企業、農協などの組織だが、実際の成否を決するのは個人の活躍である。本授業では地域課題の解決の決め手となる個人の活躍に着目し、そこにおけるアントレプレナーシップの発揮とそれを支える環境やメカニズムをさぐる。すなわち、この授業では地域において組織の中、あるいは外にあって個人が自らの創意工夫を手掛かりに周りを巻き込みながら地域課題を解決していくダイナミズムを「地域アントレプレナーシップ」と定義し、その本質や成立条件を多面的に分析し再現可能性を探求する。なお各回の授業は地域アントレプレナーシップの事例に精通する専門家の協力を得ながら各地の具体例を掘り下げ、また必要に応じゲストとして各地で活躍するアントレプレナーを招き、対談、ヒアリングなどの多様な方法論でアントレプレナーシップの本質とその発揮の方法を学ぶ。',
  2025,
  '[{"name":"上山 信一","role":"教授(副学長)"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '学修を通じて、自分が住む地域や関心がある地域の課題やビジネスチャンスが理解できるようになる。また、個人が地域の課題解決やビジネスチャンスの具現化において活躍できる可能性を知る。さらに、事例を通じて地域課題の解決に必要なアントレプレナーシップについて、具体的にイメージできるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門、経済入門
後継科目
−
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


-- 地域課題の解決とイノベーション
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-B1-0204-015',
  '地域課題の解決とイノベーション',
  '地域には観光集客、農業振興、中心市街地の活性化、子育てなどさまざまな課題がある。この授業では、各地の事例を手掛かりに地域が抱える課題を理解し、またそれを解決する方法について学ぶ。
なお、地域の再生の主役は人である。誰かが課題を直視し、仲間を募って解決に挑む。企業の協力を得たり、行政の補助金をもらったり規制の見直しを働きかける。この授業では課題の構造分析、利害調整、交渉、関係者（ステークホルダー）の共感取り付けと巻き込みなど、実際に課題の解決に挑む人の視点に立って地域を変えていく方法を考える。',
  2025,
  '[{"name":"上山 信一","role":"教授(副学長)"},{"name":"瀬下 翔太","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '学修を通じて自分の住む町、あるいはよその町で地域の人々が直面する幅広い課題についてその本質が何か、原因を含めて理解できるようになる。また、課題を放置すると将来どうなるかを見通し、それを回避する手段をおおよそ想像できるようになる。さらに課題解決に向けて人、組織、資金をどう動員すべきかイメージできるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
人文社会入門、経済入門
後継科目
農業とデジタルテクノロジー、スマート田舎のススメ

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


-- 多言語ITコミュニケーション
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'BSC-1-A2-1234-016',
  '多言語ITコミュニケーション',
  'この授業では、最新のITツールを使った多言語コミュニケーションに重点を置いて学ぶ。第一にここでは異なる言語間での意思疎通の要点を学び、国際コミュニケーションの手法を探る。次に実際の海外のソフトウェアツールの利用や開発の現場で使われるコミュニケーション方法、ライセンスや利用規約の理解、海外の情報収集、海外の最新のサイエンス情報の取得方法など、多岐にわたる具体的なスキルや知識を習得する。',
  2025,
  '[{"name":"田岡 恵","role":"教授"},{"name":"吉村 総一郎","role":"講師"},{"name":"Hernández Álvaro David","role":"講師"},{"name":"大野 元己","role":"助教"},{"name":"竹内 薫","role":"教授"}]',
  1,
  'ライブ映像科目',
  '必修(主要)',
  2,
  '["1-2Q","3-4Q"]',
  'この授業を履修した学生が、まず異なる言語間でのコミュニケーションをスムーズに行うための基礎スキルを身につけることを目標とする。また、具体的なITツールの使用スキルを身につけ、海外のソフトウェアツールや最新の科学情報などを自由に取得できるようになる。',
  'レポート50%、期末試験50%',
  '前提科目
人工知能活用実践、デジタルツールの使い方
後継科目
機械翻訳実践（英語読解・作文）、機械翻訳実践（法学）、機械翻訳実践（情報）、機械翻訳実践（異文化理解）、機械翻訳実践（自然科学）、機械翻訳実践（日本研究）
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["多言語情報理解科目"]',
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


-- ビジュアルプログラミング
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C1-1030-001',
  'ビジュアルプログラミング',
  '目まぐるしく変化する情報化社会を生き抜いていくには、プログラミングの基礎を理解し、簡単なプログラムを実生活や職務に活かす能力が求められている。本科目では、ゲーム作りを通してプログラミングの基礎を身につけると同時に、ものづくりの楽しさを体験する。演習を通してプログラムの基本構造についての理解を深め、テキストプログラミングを学修していくうえでの素地を固める。',
  2025,
  '[{"name":"ガーバー 明菜","role":"助教"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '（１）Scratch で書かれたプログラムを理解し、バグの修正や機能の拡張ができる。
（２）フローチャートや擬似コードを用いて、プログラムの構造を整理したり、他者に伝えたりできる。
（３） 計算論的思考を身に付け、問題の全体像を把握し、大きな問題を小さく分割して考え、試行錯誤しながら最適な解を導き出す手法を、今後の学修や社会生活に応用できる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
Pythonプログラミング
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


-- Webアプリケーション開発1
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C1-1030-002',
  'Webアプリケーション開発1',
  '完全な未経験者向けのプログラミング入門講座。HTML、CSS、JavaScript を身につけ、Webページ制作ができるようになる。JavaScriptというプログラミング言語を重点的に学修し、思い通りの動きをWebページにつけることができるようになり、CSS を使ってWebページのデザインを自由に変えられるようになる。ソーシャルコーディングサービスのアカウントを作成し、作成したWebページを公開する。
学修にはPCが必要である。',
  2025,
  '[{"name":"折原 ダビデ竜","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'JavaScriptとHTML/CSSを通じて、Webアプリケーション開発の基礎技術を修得し、独自のWebサービスが開発できる実践力を身につける。ブラウザやエディタやソーシャルコーディングサービスなどの開発環境にも触れ、デジタルツールとしての範疇を超え、問題解決のツールとして使用できる力を身につける。さらに作成したWebページを公開する実践を通じ、ITツールを使って自身の表現力を鍛える。プログラミングを使った開発経験を積み、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
Webアプリケーション開発2
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


-- Webアプリケーション開発2
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C1-0204-003',
  'Webアプリケーション開発2',
  'Webアプリケーション開発1の続編であるプログラミング入門講座である。
発展的なプログラミング開発を行うために必要な事を身に付ける。
Linux を使用しコマンドを実行したりシェルプログラミングを書くことで実践力を身に付ける。
GitとGitHubを利用したバージョン管理ができるようになり、ソーシャルコーディングに参加できるようになる。
Node.js を使い、ライブラリを使用した数値集計や、Slackで動作するボットアプリケーションの制作を行う。
学修にはPCが必要である。',
  2025,
  '[{"name":"折原 ダビデ竜","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '学生はLinuxについての理解を深め、基本的なコマンド操作、プログラムの作成と実行が可能になる。crontabを用いたプログラムの定期実行ができるだけでなく、Gitとソーシャルコーディングサービスを活用する技術を身につける。また、Node.jsを用いたプログラム作成、ライブラリ活用法も習得する。これらの技術を組み合わせ、デジタルツールを使用した情報収集能力と表現能力を伸ばし、プログラムを通じた問題解決へとつなげる。プログラミングを使った開発経験を積み、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
Webアプリケーション開発1
後継科目
Webアプリケーション開発3
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


-- Pythonプログラミング
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C1-0204-004',
  'Pythonプログラミング',
  '人工知能や IoT など私たちの生活を豊かにする技術は、プログラミングによって支えられている。本科目では、日常生活におけるプログラミングの有用性を体験するために、Python を使って簡単なタスクを自動化するプログラムを作成する。また、コーディング演習を通してプログラミングの基礎を身に付け、個々の目的に合わせてより高度なプログラミングを学んでいくための素地を固める。',
  2025,
  '[{"name":"ガーバー 明菜","role":"助教"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'プログラミングを使った開発経験を積み、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。具体的には以下の能力を身につける。
（１） Python で書かれた簡易なプログラムを理解し、バグの修正やプログラムの改変ができる。
（２）ライブラリーを用いて、ファイル操作やWebスクレイピングなど、簡単なタスクを自動化できる。 
（３） データ構造や制御構造などの基礎概念を理解し、今後 Python 以外のテキストプログラミングを学んでいくための素地が身についている。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ビジュアルプログラミング
後継科目
−
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


-- Webユーザーエクスペリエンス
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C1-0204-005',
  'Webユーザーエクスペリエンス',
  '本科目では、Web上のユーザーエクスペリエンスに焦点を当て、UI(ユーザーインターフェイス)とUX(ユーザーエクスペリエンス)の設計に関する知識と技術を学ぶ。具体的なウェブサイト分析を通じてデザイン思想やユーザビリティの理解を深め、リサーチやデザイン、インプリメンテーションの方法を身につけることで、効果的なUI/UX設計ができるようになる。ニコニコ動画などの事例を取り上げながら、楽しく実践的な学びを展開する。また、授業の趣旨に即した実践者・実務者を招いての授業回がある。',
  2025,
  '[{"name":"折原 レオナルド賢","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'この授業を終えることで、UIとUXの設計に必要な知識と技術を身につけていることを目指す。それぞれの手法を実際のウェブサイトの分析や自分での設計実践を通じて、効果的なUI/UX設計ができるようになることを目標とする。さらに、適切なリサーチ方法やデザイン思想の適用、インプリメンテーションのスキルも習得も目標とする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
−
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


-- メディアアート史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C1-0204-006',
  'メディアアート史',
  'メディアアートは、科学技術の発展と深く結びついている。コンピュータやインターネットなどの情報メディアの進化は、アーティストの創造の範囲を大幅に広げた。この講義では、メディアアートの領域全体を視野に入れ、起源、歴史、現状、および課題を学ぶ。アーティストや研究者などの実践者の視点からメディアアートを理解し、思考と哲学、基盤と組織、最先端の技術を活用した表現を理解することで、未来のビジョンを探求する。また、この科目にはゲストに話を聞く回が存在する。',
  2025,
  '[{"name":"江渡 浩一郎","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '授業を通じて、メディアアートの発展や表現方法を把握する能力、社会や技術の変化に対応する柔軟な発想力、またコミュニケーション能力を身につけ、新たな価値の創造や社会に貢献することができる力を身につける。また、未来のメディアアートのビジョンを探求し、自分自身の創造活動や研究に対する洞察を得る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
−
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


-- 統計学入門
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C1-1030-007',
  '統計学入門',
  '統計学は、実態の把握や世の中に起こる様々な現象の法則性を求めて発展し、今日の様々なデータ解析の礎となる学問である。本講義では、統計学の基礎として確率について触れて確率分布について学修し、さらに、本学「データサイエンス概論」講義で学んだ記述統計学の後に誕生した推測統計学などの重要な統計学について学修する。',
  2025,
  '[{"name":"川本 宗孝","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '統計学について学ぶことで実際にデータ解析を行う際のデータとその解析内容についての理解度を上げることを目標とする。そのためにデータサイエンス概論では学ばなかったデータ解析に必要な学修内容を身につける。その結果、本講義で学んだ統計学の範囲を用いて適切な判断ができるようになり、理論の理解と実践力を兼ね備え、問題解決能力を養成し具体的な課題に対応できる自信を身につけることを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
データサイエンス概論、解析学1
後継科目
R言語プログラミング、機械学習概論、数理統計
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


-- ディープラーニング1
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C1-1030-008',
  'ディープラーニング1',
  '深層学習の基礎について扱う。
• 深層学習を学ぶ事前知識として、機械学習の概要を把握する。
• 多層パーセプトロン（MLP）の利点を理解し、その基本的な構成要素と基本的な学修方法を理解する。
• ディープニューラルネットワークへ拡張するための要素技術や学習方法を理解する (活性化関数・確率的勾配降下法など)。
• ニューラルネットワークの基礎を踏まえ、最適化・初期化・正則化などのより実践的な内容を理解する。',
  2025,
  '[{"name":"河野 慎","role":"講師（予定）"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '• 深層学習を含む機械学習全般の枠組みおよび現在の社会で普及しているアプリケーションについて説明できる。
• 数式を用いて、連鎖率や誤差関数などの基本的な概念を含めたロジスティック回帰や多層パーセプトロンについて説明ができ、それぞれが抱える課題なども説明ができる。
• 初期化や正則化など様々なテクニックを用いて、多層パーセプトロンを実際に解く問題に合わせてライブラリを用いて適切に実装・実験（設計・学習・評価）ができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
データサイエンス概論、Pythonプログラミング、解析学1、線形代数1
後継科目
ディープラーニング2

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


-- 数学の方法
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C1-0204-001',
  '数学の方法',
  '大学での学問を学ぶために、最低限必要な数学の概念を講義する。主な内容は、関数/微積分/行列計算とその応用である。社会への応用事例を多く取り上げ、それらの数学がどのように我々の社会や生活に利用されているかについて講義する。',
  2025,
  '[{"name":"瀬下 大輔","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '・各回の数学的内容、特に、関数/微積分/行列計算とその応用に習熟する。
・計算できることよりも、その概念を理解していることに重点をおく（計算できることは概念を理解することと対立するものではない）。
・取り扱う数学的概念がどのように社会で応用されているかを知る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
線形代数1、解析学1

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


-- 逆さ科学史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C1-0204-002',
  '逆さ科学史',
  '現代社会における科学の成果から出発し、その元となった科学的発見やエピソードへと遡ることで、科学技術の歴史の全体像を学ぶ（時系列ではなく、昔と今を比較し、現代科学から過去に飛ぶ「逆さ科学史」）。現代が「科学技術社会」であることを理解し、進化、RNA、量子といった科学のキーワードの起源を理解する。教養を高めるとともに、ビジネスなどへ応用できる基礎を築く。',
  2025,
  '[{"name":"竹内 薫","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'ニュートンは実際に木からりんごが落ちたのを見て万有引力を発見した、というエピソードは、本人の書き遺したものには見られないことや、ガリレオの宗教裁判が、科学対宗教という単純な構図ではなかったことなど、ステレオタイプな通俗科学史から脱却して、「その当時、本当は何が起きていて、それが現代の科学技術にどのような影響を与えているのか」を理解してもらうのが目標。それはつまり、科学や技術や歴史に対して、学生一人ひとりが「批判的思考」をする習慣をつけることにほかならない。単なる元号の暗記ではなく、人類の科学の発展と未来について、考えてもらいたい。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
数学史、日常に現れる物理学

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


-- 初等代数概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C1-1030-003',
  '初等代数概論',
  '約数・倍数などの初等的な整数の性質から始めて、ユークリッドの互除法、素因数分解などの初等整数論の基本を履修する。その後、合同式やフェルマーの小定理など、整数のより進んだ性質に進み、最終的には、その応用としてRSA公開鍵暗号の仕組みをブラックボックスなしで完全に理解することを目指す。',
  2025,
  '[{"name":"加藤 文元","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '● 整数の整除関係の基本および「割り算」だけから、整数の深い性質や定理が導かれることを理解する。
● 整数の一般的性質のような地味にみえる事項が、RSA公開鍵暗号のような実用的な技術に直接的につながっていることを理解する。
● RSA公開鍵暗号の仕組みをブラックボックスなしで、自分の理解として体得する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
群論

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


-- 線形代数1
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C1-1030-004',
  '線形代数1',
  '線形代数１では、線形代数の基本的なコンセプトとその理論的背景、そしてそれらがどのように幅広い分野に応用されるのかについて学んでいく。ベクトルの基本操作、行列の演算、連立方程式の解法、基底や次元などの概念を扱い、直交化法やQR分解なども学ぶ。また、線形計画法やゲーム理論についても触れることで、線形代数の幅広い応用力を身につけることを目指す。',
  2025,
  '[{"name":"梅崎 直也","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '線形代数１を修得すると、ベクトルの基本操作や行列の演算、連立方程式の解法、基底や次元などの概念を理解し、直交化法やQR分解なども学び、それを活用できる。これにより、情報技術や社会の基盤となる数理への理解が深まる。また、線形代数を用いた多様な分野への応用力を身につけることで、現実の課題解決に対する視点を広げ、より高度な数理的思考とそれを活用する能力が身につくことを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
数学の方法
後継科目
数理科学発展演習Ⅰ、線形代数2、量子コンピュータ演習

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


-- 解析学1
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C1-0204-005',
  '解析学1',
  '微分積分の基本原理とそれらの応用について学修する。微分・積分の計算方法はもちろん、テイラー展開など近似の考え方や、ガンマ関数・ベータ関数など応用上重要な関数の扱いについても触れ、その上で微分方程式の解法やラプラス変換、微分方程式の数値解法を学ぶ。これら一連の学修を通じて、幅広い分野での微分積分の応用力を身につけることを目標とする。',
  2025,
  '[{"name":"梅崎 直也","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '解析学1を学び終えた時点では、微積分の基本原理とその計算法を理解し、それを幅広い分野で応用する力を有することを目指す。これらの理論と技術を駆使して、現実世界の多様な問題を数学的に分析し、その解を求める。微分積分の知識と技術は、問題解決能力を向上させるための重要なツールである。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
数学の方法
後継科目
数理科学発展演習Ⅰ、解析学2、力学

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


-- 線形代数2
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C1-1030-006',
  '線形代数2',
  '線形代数１で学んだ基礎を活かし、線形代数の応用を深める。抽象的なベクトル空間や線型写像の概念を学び、線形空間の次元について理解する。さらに、固有値・固有ベクトルの理解から対角化といった線形代数の中心的な理論を学ぶ。さらに、確率行列や特異値分解、ベクトルの外積などといった高度な技術を扱い、より幅広い応用が可能な理解を目指す。',
  2025,
  '[{"name":"梅崎 直也","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '線形代数２を修得することで、線形代数の応用面に対する理解が深まる。固有値・固有ベクトル、対角化や特異値分解などの高度な技術を用いて、多様な課題を分析し、その解を見つけ出す能力を養う。また、線形代数１で学んだ基礎知識を活かし、より幅広い応用が可能な理解を深める。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
線形代数1
後継科目
数理科学発展演習Ⅱ, 量子力学, 解析学3

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


-- 解析学2
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C1-0204-007',
  '解析学2',
  '解析学２の授業では、多変数関数の微分積分を学び、微分積分の応用など高度なトピックに取り組む。特に、重積分や偏微分方程式の理解を深める。例題や演習を通じて理解を進展させ、物理学や工学、経済学などの分野でその応用可能性を探求する。新たな知識を積み重ねることで、微分積分の理論をより深く理解することを目指す。',
  2025,
  '[{"name":"梅崎 直也","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '解析学２の単位修得を通じて、解析学の応用と高度なトピックに対する理解を深める。重積分や偏微分方程式を学びつつ、物理学、工学、経済学などの分野での応用を意識し、理解を深めるための例題や演習に取り組む。また、多くの例題や演習を通じて、情報技術や社会の基盤において数理を活用する能力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
解析学1, 線形代数1
後継科目
数理科学発展演習Ⅱ, 解析学3, 距離空間, 量子力学, 電磁気学, 熱統計力学

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


-- グラフ理論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C1-0204-008',
  'グラフ理論',
  'グラフ理論は、ものとものの間のつながり方に着目した学問であり、離散数学分野における主要なトピックの一つである。今日では、ウェブシステムや交通網、電気工学、社会科学など、さまざまな分野に応用されている。本講義では、グラフという概念に親しんでもらい、グラフの持つ数理的な構造や諸定理を理解してもらうほか、工学・情報学的な応用例を多めに紹介する。',
  2025,
  '[{"name":"辻 順平","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本講義を通して、グラフ理論における基本的な用語の意味やその数学的な運用方法を理解することができる。また、現実の問題に対してグラフ理論的なものの見方をすることができ、もの同士・概念同士の関係性をグラフによって適切に定式化できる。さらに、グラフアルゴリズムを用いて、問題解決をすることができるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
組合せ論

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


-- 機械翻訳実践（英語読解・作文）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'LAN-1-B1-1030-001',
  '機械翻訳実践（英語読解・作文）',
  '本科目では機械翻訳を英語学習のツールとして用いて、翻訳、逆翻訳などの方法を用いて英語そのものについての理解を深めさせ、今後ますます多様化していく英語世界の中で正しくかつ能動的に英語を運用する力を高める。また、その中で機械翻訳の現状、利点、限界を体験させ、機械翻訳を正しく用いる方法を実践的に修得させる。主にリーディングとライティングのスキルの向上を目指す。',
  2025,
  '[{"name":"中久喜 匠太郎","role":"客員講師"},{"name":"田岡 恵","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '機械翻訳を多様な外国語文献の読解のツールとして用い、一次ソースからの情報収集能力を身につけ、異文化理解における知識や見識を深める方法の幅を広げることができる。また、読解した内容の背後にある文化的差異や文脈に気づくことで、現実世界を批判的に深く理解し、主体的な見解の形成する視点を養うことを目標とする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
機械翻訳実践（異文化理解）、機械翻訳実践（自然科学）、機械翻訳実践（法学）、機械翻訳実践（日本研究）、機械翻訳実践（情報）

 2025年4月1日現在。内容が更新される場合があります。',
  '["多言語情報理解科目"]',
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


-- 世界が変わる編集力
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-1-C1-1030-001',
  '世界が変わる編集力',
  '学びを自分の力にしていくためには、どの分野であれ「情報」を「編集」する基礎力が必要になる。学びにとどまらずあらゆる思考や活動の基盤となり、社会で活躍する人材にとっての必携技能である「編集力」を、演習を交えながら実践的に鍛えていく。編集工学の技法を習得し、世界知に分け入る方法とツールを手にすることで、ZEN大学での学びをより深める環境を、学生ひとりひとりの内面に整える。',
  2025,
  '[{"name":"安藤 昭子","role":"客員教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'すべてを「情報」として捉える目を養い、情報は「編集」可能であることを理解する。編集工学の技法を基に情報編集の「型」を習得し、教科等の分野を横断しながら自由に思考できる実践的な編集力を身につける。また、テクニカルな編集技能にとどまらず、世界の見方を自在に更新していける編集的世界像を獲得する。それによって、既存の型にはまった見方を脱し、独自の視点で異ジャンルの学びをまたぎながら探究する力をつける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
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


-- リテラシーと応⽤のための物語理論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-1-C1-1030-002',
  'リテラシーと応⽤のための物語理論',
  'ロシア・フォルマリズム、民俗学、文化人類学、フロイド派、ユング派、ハリウッド映画の文法、歌舞伎理論、メディアミックス理論など多様な領域で発展してきた神話論や民話論を含む物語論を横断的に学び、物語が情報を構成し、同時に理解する「論理」であることを学び、報道や政治的言説に潜む「物語」を相対化できるリテラシーを身につけるとともに、創作に関心があるものはラノベ、ゲーム、アニメ、コミック、オンラインなどの物語表現を解析する物語創作の工学的基礎を養う。',
  2025,
  '[{"name":"大塚 英志","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '小説・まんが・映画・アニメなどに触れた時、物語構造の所在について実感できるようになるとともに、ニュースや情報が物語の論理で成り立っていないか批評的な分析ができるようになる。また、物語の構造論と情報論やプログラミングの思考との近似性を実感し、オンラインにおける創作に広く援用可能な理論であることを理解する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
ゼミ（物語創作と物語の構造分析）
※実務家教員担当科目
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


-- 哲学概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-1-C1-0204-003',
  '哲学概論',
  '西洋哲学は、神との本格的な決別を果たすことで「現代哲学」へと変貌を遂げました。本授業では、西洋近世哲学の一つの完成形態であるカントやヘーゲルの哲学から説き起こし、アジアの思想をも視野に入れつつ、19世紀から20世紀にかけての神なき時代の現代哲学の流れを追い、ますます多様化しつつある21世紀の状況にふさわしい哲学のありかたを考える。',
  2025,
  '[{"name":"出口 康夫","role":"客員教授"},{"name":"順次公開予定","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '分析哲学や大陸哲学といった個々の学派の内部に閉じ籠ることなく、現代哲学の流れに関する包括的な俯瞰図を得ることができる。また、カントとヘーゲル、ニーチェやハイデッガー、リオタールらの哲学について、自分の言葉でわかりやすく語ることができる理解力を身につける。さらに、AIやロボットとのあるべき関係や環境問題といった現実の課題に対して、哲学的な観点から深掘りして考察する力を養う。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
科学哲学

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


-- 公共哲学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-1-C1-0204-004',
  '公共哲学',
  '本授業では、公共哲学の古典を身近な事例と、それを参照点としながら、目指すべき日本の将来像について考える。何が正しいのか、その基準が曖昧となった社会において、市民として善く生きるためにはどうしたら良いのだろうか。この授業では修羅場と想定外の事態に対して「最善」の選択をするために、「公共哲学」を学んでいく。',
  2025,
  '[{"name":"鈴木 寛","role":"-"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '何が正しいのか、どういう社会が望ましいのかを判断する上での様々な視点・理論を知ることで、学生個人個人が多様な観点を組み合わせて思索し、自身の考えの根拠を言語化できるようにする。また、それによって、他者の持つ自分とは異なる価値を理解し、ジレンマを乗り越えてコラボレーションできるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
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


-- マンガ絵コンテから学ぶ視覚表現
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-1-C1-0204-005',
  'マンガ絵コンテから学ぶ視覚表現',
  '紙のまんがにおける「コマの割り方」に特化した授業。一見、専門性が高く感じられるが全くまんがや絵が描けない初心者も聴講可能。日本の戦後まんがの手法は「映画的手法」と呼ばれる「映画」「アニメ」の演出と互換性が高い手法にあり、現在のweb、ショート動画も含め、視覚情報の「編集」の基礎理論でもある。近年「絵」は描けるが「コマが割れない」まんが家も多い、それは「映画的手法」の技術的継承がされていないためである。本授業はその復興を目論むと共に、縦スクロールやゲームの演出、生成AIの作画によるまんが創作など新領域に応用できる視覚情報の編集の最も基礎で汎用的な授業である。',
  2025,
  '[{"name":"浅野 龍哉","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'まんがの作り方の理論的な思考方法を通して物事の見方、考え方を養い、縦スクロールまんがやゲームの演出、生成AIの作画によるまんが創作など新領域、その他の分野にも応用できる視覚情報の編集能力を会得することを目標とする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
WEBコミック演習
※実務家教員担当科目
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


-- 近・現代アート概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-1-C1-0204-006',
  '近・現代アート概論',
  '美術に関心がある、ないに関わらず、知っておくと視野が広がる20世紀に世界的に活躍したアーティストを紹介する。アートは知能情報社会において結びつきが見えづらくなっているノードの接点を直感的に可視化し、文脈を読み取る能力を獲得するのを助けてくれる。アーティストたちの作品の中からお気に入りのものを見つけ、彼らがどんな人生を送ったのかを想像し、その作風やテクニックを検証していく。',
  2025,
  '[{"name":"岩渕 潤子","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'アーティストの中から10人の名前を覚え、６人のお気に入りのアーティストを見つける。なぜそれらのアーティストの作品に惹かれるのか、テーマか、構図か、色彩か？　その理由を説明できるようにする。作品には各時代の社会情勢との密接な関係がある。アーティストの出身地、活動した地域などと関連づけて自分で考えられるようになって欲しい。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
芸術と文化資本Ⅰ

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


-- AI社会の歩き方
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-1-C2-1200-001',
  'AI社会の歩き方',
  '現代社会は、情報技術の発展から大きく影響を受けており、情報技術がもたらすリスクとベネフィットに関して法・社会・倫理的観点を検討する必要がある。本授業は、各領域の実務家を中心としたゲストの講義を通じて、情報技術の中でも特に人工知能（AI)や分身ロボットを対象として、我々一人ひとりがAIとどのような関係にあり、AIのある未来をどのように描くかを考える力を身につける。具体的には（１）エンジニアとして、AI開発に際して検討する必要のある課題を知る、（２）利用者として、AIが生活、仕事や人生にどのような影響をもたらすかを考える、（３）AIが浸透する社会において、政治・経済・文化などにどのような変化や対策がもたらされるかを考える。',
  2025,
  '[{"name":"江間 有沙","role":"非常勤講師"}]',
  1,
  'ライブ映像科目',
  '選択',
  2,
  '["1-2Q"]',
  'AIを技術的な観点からだけでなく、法律・社会・文学など多様な観点から把握し、自身や自身を取り巻く環境との関係を考えられるようになる。また、AIが実際に活用されている事例に触れることで、自分の将来の仕事や解決したい課題に引きつけ、AIをどのように利用できるのか、またそのためにはどのようなキャリアパスが存在するかのイメージを得る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
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


-- 地域研究
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-1-C1-0204-002',
  '地域研究',
  '本授業では、ある国や地域を理解するために、政治学・社会学・歴史学・文化人類学など、多様な領域の知識と考え方を用いる「地域研究」という領域について学ぶ。ある国や地域について理解する上で有用な観点は多様であり、様々な視点から世界の国・地域を理解する手法の理解を目的とする。具体的には、以下３つの能力の修得を目的とする。①国や地域を掘り下げて考え、時事問題や異文化をより解像度を上げて理解できるようにする。②そのための、歴史的・理論的・空間的・文化的な観点を身につける。③地域として、日本を相対化した視点で見れるようにする。',
  2025,
  '[{"name":"大野 元己","role":"助教"},{"name":"Hernández Álvaro David","role":"講師"},{"name":"Pradhan Gouranga Charan","role":"講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '特定の国と地域について、時間・空間・理論・文化を含む多角的な視点に基づいて把握し、それによって現代の国際・地域関係の時事的なトピックを一つの視点に偏らない広い視点で考えられるようになる。また、一つの国・地域として、日本を俯瞰的に理解できるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
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


-- 意思決定の能力開発
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-1-C1-0204-003',
  '意思決定の能力開発',
  '個人から社会に至るまで、我々の日常生活は意思決定にあふれている。意思決定は選択とそのための判断と定義される。意思決定の結果は、場合によっては自分の人生や社会に大きな影響を与える。本講義は、個人・小集団・組織の意思決定の順に、行動経済学、認知心理学、社会心理学等の知見を分野横断的に活用することによって、統合的な視座を与え、実際の能力の向上を図ることを目的にする。',
  2025,
  '[{"name":"印南 一路","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '意思決定をめぐる様々な学問分野の概念や考え方を横断的に理解し、それらを総合的に使うことによって、個人の意思決定（選択と判断）、集団の意思決定、組織の意思決定の3つのレベルで、目的合理的な意思決定ができる能力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
交渉・合意形成概論、交渉・合意形成演習、ゼミ（意思決定研究と実践）

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


-- 共創地球論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-1-C1-0204-004',
  '共創地球論',
  '最新科学の知見は、この地球が生命による惑星改造（テラフォーミング）の結果であると教える。だが酸素に満ちた大気を創った光合成生物も、大陸を「緑」の絨毯で覆った植物たちも、自分が地球を大改造しているという自覚はなかった。人類は地球史上初めて、自らの惑星改造のインパクトを現在進行形で認識し、未来を選択しうる種だ。「共創地球論」とは、そうした「共創する主体」として人間を位置づけ直した地球環境講義である。',
  2025,
  '[{"name":"竹村 眞一","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '「人新世」Anthropoceneという新たな地質年代を創始するほどに、巨大な影響力を持つに至った人類。そんな時代に生きる世代として、人類活動の地球的なインパクトを包括的に再認識するとともに、文明転換と行動変容の方向性を、これまでの「生命と地球の共創（共進化）」の歴史も踏まえた地球的公益性の基準で見定める必要がある。その基礎となる知見を最新科学データをもとに共有し、地球的な課題解決を自分で考えてゆく力を育成する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
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


-- 情報社会の総合安全保障
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-1-C1-0204-005',
  '情報社会の総合安全保障',
  'われわれが生活をする社会の安全保障にとって、情報通信や産業インフラの確保とともに社会の基盤にある価値観や倫理を理解し思索する力が大切になっている。この講義では、日本の総合的な安全保障を（1）個別的および集団的な自衛、軍備管理・軍縮条約といった外交・国際政治、（2）資源の確保や半導体のグローバルなサプライチェーンといった経済安全保障、（3）ハイブリッド戦争やサイバーセキュリティのような先端的な情報通信技術、（4）政治経済体制とイデオロギーや社会哲学、という4点を含むものとして捉える。この講義は（ⅰ）髙見澤將林（元内閣官房副長官補／事態対処・危機管理担当、元ジュネーブ軍縮大使）、（ⅱ）山内康英（担当教員）の２名が担当する。政治と行政の実務経験者および研究者の視点を通して日本の安全保障の現状と課題を学ぶ。',
  2025,
  '[{"name":"山内 康英","role":"教授"},{"name":"髙見澤 將林","role":"客員教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '「ビッグブラザー」の意見を受容するのではなく、安全保障という専門分野をどのような視点から分析し、さらにまた自ら調査研究するのか、という方法論が大事である。そのためには安全保障を日本の歴史的な政策の推移から理解するのが近道となる。この講義では（1）安全保障に関する組織と政府機構を含む具体的な政策および政治の決定過程、（2）1970年代後半以降50年間の日本の安全保障政策と政府の危機管理体制を学ぶ。これによって（3）国際政治学、戦略論、組織論、国際公法といった社会科学の分析枠組みを理解し具体的な社会事象に結び付けて解釈することを到達目標とする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
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


-- 経済言説史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-1-C1-1030-001',
  '経済言説史',
  '経済学は既に200年以上の歴史を持った学問である。現在世界中で教えられている経済学はどのようにして発展し、一体何を問題とし、どのように解決してきたのか。また、現在どのような問題が残されているのか。経済学を巡る言説・言論の歴史を振り返ることで、経済学が問題にしてきた本質的な点を考察していく。その視点を通すことで、現代社会の多くの問題を経済学的に批判的に捉えなおす能力を身につけることができる。',
  2025,
  '[{"name":"市橋 勝","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '本科目を通して、経済学説の歴史とその蓄積を学び、経済分析の仕方が長い時間をかけて積み上げてきたものであることを学ぶ。また、経済学説のそれぞれは時に対立したり矛盾したりする面を持つが、それを学ぶことで多角的な視点からの考え方と健全な批判的精神を涵養し、複雑で不確実性に満ちた新時代を切り開く力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
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


-- マルクス経済学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-1-C1-0204-002',
  'マルクス経済学',
  'この授業では、「資本主義」とはどのような社会なのかを考えていく。本来、経済活動とは、人々がこの地球上で他者や自然とともに生きていくための行為である。ところが、なぜ人は過労死をするまで働いてしまうのか。なぜ生きるための生産・消費活動が深刻な環境破壊を引き起こしてしまうのか。本講義では、マルクスの『資本論』を手がかりとして、「商品」「貨幣」「資本」といった概念を学びながら、資本主義社会の全体像を再構築していく。',
  2025,
  '[{"name":"斎藤 幸平","role":"客員教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本講義を受けることで、具体的には以下の能力を身につけることを到達目標とする。まずは、『資本論』の大枠の流れや内容を把握できるようになる。その際には、「商品」「貨幣」「資本」などの基本的概念や「労働価値説」について、自分のことばで説明できるようになること。そのうえで、資本主義社会の歴史的特殊性（他の社会システムとの違い）を理解し、自分なりに資本主義についての分析や考察ができるようになることを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
現代資本主義論

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


-- 企業経営と会計
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-1-C1-1030-003',
  '企業経営と会計',
  '本科目では、会計の歴史や簿記のしくみの説明から始まり、財務諸表の基礎的な読み方及び実践的な分析方法を修得させる。身近な企業の実例の分析を通じて、財務諸表にあらわれる業種の特徴やビジネスモデルへの関心や理解を高め、学生が将来のいかなるキャリアにおいても会計の知識と理解を積極的に活用するスキルとマインドを養う。',
  2025,
  '[{"name":"田岡 恵","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '学生自身が関心のある上場企業の財務諸表（損益計算書、貸借対照表、キャッシュフロー計算書）をデジタルツールを用いて自ら入手し、再現可能なプロセスに沿って財務諸表上の重要な数値を網羅的に分析した上で、その分析結果を業界あるいは個社特有のビジネスモデルや事業特性の理解をもとに批判的に評価し、企業の財務状態のあるべき姿や将来の展望について自分なりの考えを論じることができるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
企業経営
後継科目
企業経営とファイナンス
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


-- IT産業史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-1-B1-1030-001',
  'IT産業史',
  '本科目では、今日の視点に立った「IT産業史」を取り上げ、ネット、モバイル、IoT、AIへと連なる21世紀の我々の生活や社会に合致した歴史観を理解させる。日本がITの世界で何をなしえたかを検証することで、我々が、今後も応用可能となる製品戦略やビジネスモデルへの理解を促し、これからの時代を生き抜くすべての人が当たり前に知っているべき教養としてのITの歴史を教える。また、ゲストと教員がディスカッションをすることで知識を高めていく。',
  2025,
  '[{"name":"遠藤 諭","role":"客員教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '本科目では、自身が日常的に触れているネットやデジタル機器が、どのように誕生、産業化して社会を変革してきたかを学ぶ。疑問もなく使っているスマートフォンやソーシャルメディアも、成立にいたる技術やコンセプトがある。モノを生み出すことに関わることの魅力に気づき、課題を見抜き解決しようとする態度を身につけることで、技術的な議論やマーケティングにおいて、歴史から学んだことを応用できるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
メディアで検証する未来の作り方
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["未分類"]',
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


-- マンガ産業史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-1-B1-1030-002',
  'マンガ産業史',
  '本科目では「マンガ産業」の歴史を戦前から現在に至るまで、出版社・編集者・マンガ家など、様々な立場からの視点を通じて俯瞰的に学ぶ。子ども向けの娯楽として立ち上がった「マンガ産業」がいかにして、現在のような巨大産業へと発展していったのかを深く理解することで、エンタメ産業の推進に必要とされるマインドセットを学ぶ。また、ゲストと教員がディスカッションをすることで知識を高めていく。',
  2025,
  '[{"name":"佐渡島 庸平","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["1Q","3Q"]',
  '本科目では、マンガ産業を支えているマンガ雑誌を中心としたメディアの成り立ちや、各時代を代表するヒット作品の創作背景を学ぶことを通じて、メディア・プロデュースやコンテンツ・プランニングについての理解を身につける。同時に、これからの時代のエンタメ産業について議論する際に、マンガ業界の発展の歴史から知見を引用し、どういう発想や仕組みが必要となるかを応用して考えることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
マンガの企画立案とプロデュース論
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["未分類"]',
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


-- アニメ産業史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-1-B1-0204-003',
  'アニメ産業史',
  '本科目では、アニメを「日本の誇るべきメディア芸術」として取りあげ、授業を通して「アニメの成り立ち」を歴史、芸術、ビジネスなど、さまざまな観点から解説する。「見ればわかる」と思われがちなアニメを「ものづくりの事例」として理解することを目標とする。「世の中で流通する商品には何が必要か」を思考するための基礎能力を高めることで、将来自分が携わる仕事に何が必要とされるかを想像できる能力を養う。',
  2025,
  '[{"name":"氷川 竜介","role":"教授"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '毎週多くのアニメ作品が流れることを「当たり前」と思う人も多いだろう。本科目では、資金を集める人、作っている人、流通させている人など大勢が参加した「社会的な営み」であるという認識を身につけ、どのような歴史の積みかさねの上に、現在のアニメができたのか、そこで大切なことは何なのかについて説明できるようにする。日本社会、あるいは国際的に通用する商品に何が必要で、将来必要なものは何かを論じられる能力の修得が目標である。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
アニメのクオリティー管理と商品性、アニメ産業に関わる仕事、ゼミ（アニメ作品の分析メソッド）
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["未分類"]',
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


-- 日本のゲーム産業史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-1-B1-0204-004',
  '日本のゲーム産業史',
  '本科目では、日本におけるゲーム産業の歴史を概観しつつ、家庭用ゲームやスマホゲームなど、ジャンルごとの個別の歴史を詳細に取り上げる。日本ゲーム産業を築きあげたビジネスモデルや、ヒットの裏側にあった社会環境、文化的背景などを理解することで、多角的な視点から日本のゲームの歴史の大きな流れを学び、時代の変化に対応する思考力や対応力を養う。なお、いくつかの授業ではゲストスピーカーをお呼びし、ゲームジャンルとは異なる切り口からディスカッションを行う。',
  2025,
  '[{"name":"細井 浩一","role":"教授"},{"name":"平 信一","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択必修(主要)',
  2,
  '["2Q","4Q"]',
  '日本のゲーム産業史の大きな流れを把握し、どのようなビジネスモデル・社会環境・文化的／技術的背景のもとに、多様なゲーム産業が発達してきたのかを理解する。本授業を通して、日本のゲーム産業の歴史に大きく影響を与えた重要な出来事や、歴史の転換点となった事象について説明できるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
ゲーム制作論基礎、ゲーム制作論応用
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["未分類"]',
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


-- 二次創作の歴史から見るネット文化
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-1-C2-0034-005',
  '二次創作の歴史から見るネット文化',
  'ネットは複製可能なデジタル世界。そこで生まれた文化に於いて複製からの派生とも言える二次創作は非常に重要な位置を占める。本科目では、。当事者であるゲストからの解説をきくことで、各出来事における深い知識が養える。',
  2025,
  '[{"name":"伴 龍一郎","role":"客員講師"}]',
  1,
  'ライブ映像科目',
  '選択',
  2,
  '["3-4Q"]',
  '現代ではネットは生活インフラとして誰もがその利便性を享受し、コンテンツを楽しんでいる。本科目では、ネット文化の歴史シーンを代表するゲストから情報技術・法律・利害・思いなどを聞くことで、通常は得られないインサイドな情報から多角的にネット文化を分析する力を養い、身近な事象やサービス・ビジネスにおいてもそれらの分析を活かせるようにすることを目標とする。授業を通して、ネット文化における二次創作とオタク文化について体系的な理解が得られる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["未分類"]',
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


-- キャリアデザインⅠ（自己理解）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C1-0204-001',
  'キャリアデザインⅠ（自己理解）',
  '本科目では、学生が自分のキャリアを形成していくために必要なキャリアデザインについて知り、その一要素として自己を知ることを中心に取り組む。また、不確実で変化の激しい知能情報社会において長期的な人生を主体的に歩むうえで必要となる考え方、社会や働くことについての基本的な知識を提供する。これらの学びを通じて、大学生活を有意義に過ごすための具体的な目標と計画を立て、実行することを支援する。',
  2025,
  '[{"name":"藤澤 広美","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本科目を通じて「自分とはどのような人間か」、「どのような大学生活を送るのか」について自分なりの表現ができるようになる。また、長期的な人生を主体的に歩むうえで必要となる考え方や自己管理能力、キャリアプランニング能力を身につけることができる。具体的には、不確実で変化の激しい知能情報社会において求められる、多様なものの考え方を用いて自身のキャリアについて柔軟に思考し、将来の目標達成に向けた行動ができるよようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
キャリアデザインⅡ（仕事理解）、キャリアデザインⅢ（就活実践）
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- 英語コミュニケーションⅠ（発音）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C1-1030-002',
  '英語コミュニケーションⅠ（発音）',
  '世界の多様な人々とコミュニケーションを行う際に欠かせない、滑らかで途切れない英語を話すために必要な発音の理論と具体的なトレーニング方法を提示する。英語の流暢さを構成する日本語から英語への変換力・反射力・発音など、これらのすべての要素を一挙に磨くことの重要性を伝え、英語で自分の考えや感情を伝えるための自信、楽しさを養う。',
  2025,
  '[{"name":"横山 カズ","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '英語による対人コミュニケーションで欠かせないスピーキング・スキル、特に世界で伝わる発音の技術を習得し、その結果としてリスニング力を獲得することを目指す。英会話の土台となる発音に自信が持てることにより、日常生活、留学、ビジネスなどで直面する多様な状況場面においても、臆することなく積極的に表現、コミュニケーションを行うマインドセットが身につく。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
英語コミュニケーションⅢ（プレゼンテーション）、英語コミュニケーションⅣ（ビジネス会話）

 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- 英語コミュニケーションⅡ（日常会話）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C1-0204-003',
  '英語コミュニケーションⅡ（日常会話）',
  'この授業では、英語という言語の国際的な位置づけについて言語学、英語教育学、社会学などの学問分野と関連を包括的に提示する。そして、英語の４技能を活用しながら、日常のコミュニケ ションにおいてよく使う表現を理解し、場面や目的に応じた適切なコミュニケーションの取り方について、様々な具体例を通して実践的な理解を深める手助けをする。',
  2025,
  '[{"name":"鈴木 栄","role":"客員教授"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '世界における英語の位置づけを理解し、英語の４技能すべてを使い、考えて発信することが求められる現代に適応できるように、英語によるコミュニケーション能力の基礎を身につけることを目標とする。また、身近な話題についての英語表現を学び、デジタル・ツールを使う英語学修に慣れ、情報検索をおこなうなどして英語でコミュニケーションをおこなう基礎力の育成を目標とする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
英語コミュニケーションⅠ（発音）
後継科目
英語コミュニケーションⅡ（日常会話）、英語コミュニケーションⅢ（プレゼンテーション）、英語コミュニケーションⅣ（ビジネス会話）

 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- 対人コミュニケーション論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C1-0204-004',
  '対人コミュニケーション論',
  '初対面の人とのコミュニケーションは、社会での活動に不可欠である。それが苦手という人は多いが、ほとんどの場合、適切な方法を学んできていないからである。だが、コミュニケーションは技術として後天的に誰でも習得可能なものだ。本授業では、かつていわゆる「コミュ障」だった講師が、20年以上にわたるラジオパーソナリティ経験を通して得た、特に会話における実戦的かつ受講直後から使えるコミュニケーション術を伝授する。',
  2025,
  '[{"name":"吉田 尚記","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本科目では、初対面の相手とでも中身のある会話を可能にし、円滑なコラボレーションが行える関係を築けるような会話術を身につける。具体的には、コミュニケーション技術の習得を通じて、他人に対する心理的な壁を下げることで、誰とでも軽い雑談から深い会話までできるようになること、いわゆる「コミュ障」の状態を脱することを目指し、コミュニケーション能力を身につけることで、課題解決をするための下地を養うことができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
クリエイティブ・コミュニケーション
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- クリエイティブ現場論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C2-1200-005',
  'クリエイティブ現場論',
  '本授業では、脚本家、放送作家、マンガ家、小説家、アニメ監督、タレント等、クリエイティブな現場で日々活動している実践家たちをゲストとして招き、講師との対話を通じてそれぞれの現場における業務内容や仕事術を理解する。さらには、全15回の授業を経て業界に通底する仕事のエッセンスを学ぶことで、クリエイティブな現場で求められる姿勢や、社会の中で自身の価値を発揮する術を学ぶ。',
  2025,
  '[{"name":"吉田 尚記","role":"客員講師"}]',
  1,
  'ライブ映像科目',
  '選択',
  2,
  '["1-2Q"]',
  'さまざまなクリエイティブの現場において日々挑戦しているゲストや教員との対話を通じて、クリエイティブな分野、特に商業的側面を含む現場で共通項として必要とされる創造力、知識、態度を、実例を通じて理解できるようになる。議論の中で提示される多様な視点、考え方を批判的に検討し、クリエイティブな分野における自らの未来像を打ち立てることを目指す。',
  '確認レポート100%',
  '前提科目
対人コミュニケーション論
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- ソーシャルイノベーション概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C2-1200-006',
  'ソーシャルイノベーション概論',
  '近年、ますます複雑化する社会問題は、行政はもとより市民にかける負荷が増大している。相互扶助の社会を実現するために、ソーシャルイノベーション（社会変革）を進めるNPO、企業、行政、研究者、アスリート等のリーダーをゲストスピーカーとして招き、事例を交えながら社会課題の解決に向けた術を学ぶ。',
  2025,
  '[{"name":"鈴木 寛","role":"-"}]',
  1,
  'ライブ映像科目',
  '選択',
  2,
  '["1-2Q"]',
  'ソーシャルイノベーション（社会変革）の基礎を理論や具体例から理解し、行動に繋げる学びの土台を作るとともに、新しい時代における社会貢献活動の社会的意義や目的、経済的効果等に関する基本的な知識を習得する。学生が今後社会と関わる上でのロールモデルを知ることで、社会課題の解決に向けた具体的なプロセスのイメージを掴む。',
  '確認レポート100%',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- ネット情報発信概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C2-0034-007',
  'ネット情報発信概論',
  'Webクリエーションの現場からインフルエンサー、政治家、経済人といった多様な視点からWeb表現の可能性および実人生に活かすことのできる知見について考察する。オリエンテーションで全体像を抑えた上で、ゲストたちの具体的な事例や視点を通じてクリエイティブな表現を学んでいく。コンテクストに応じた適切な表現方法を理解し、具体的な事例を通して「伝える技術、理解する技術、知見を広める技術」を学ぶ。本科目は授業の趣旨に即した実践者・実務者を招いての授業回がある。',
  2025,
  '[{"name":"高橋 弘樹","role":"客員講師"}]',
  1,
  'ライブ映像科目',
  '選択',
  2,
  '["3-4Q"]',
  '現代社会を構成するさまざまなジャンルからそれぞれのWeb表現の理念や手法について理解を深め、自身の知見と表現力を広げることを目標とする。メディアや情報の流通形態が急速に変化する中で、情報の真価を見極め、適切に表現できる力を身につける。身近な問題解決から、社会に出てゆくうえで有用な思考技術の獲得し知能情報社会で生き抜くための視野を広げることで、クリエイターのみならず企業人や研究者など実際の就業にもつなげてゆく。',
  '確認レポート100%',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- デジタル画像技法論Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C1-1030-008',
  'デジタル画像技法論Ⅰ',
  'この授業ではデジタルイラストツールの基礎知識を学びその役割について考察する。併せて表現上のレクチャーを行う。デジタル化した現代社会で、コミュニケーション及び課題解決の手段として画像による可視化は重要な位置を占める。共有スピードが速く、表現の多様性とクオリティの進化が著しい画像メディアの現状を学ぶ。本学では知識を本質的なものとするため、手を動かし制作をすることで、身体感覚と思考を融合させる学修を行う。',
  2025,
  '[{"name":"ディープブリザード","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  '本授業ではデジタルイラストの制作フローと、ペイントツールの基礎知識を習得することにより画像への理解を深める。現代におけるデジタル画像の役割について理解し、手を使い、画像を制作しつつ学ぶことによりそのプロセスと価値を知る。さらに、画像とそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、将来的には、いまや日本の基幹産業であるクリエイティブ産業を支え、さまざまな形で活躍する人材となる。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目 

【課題内容】

イラスト制作・資料制作

【最終課題のフィードバック方式】

講評動画

【特筆事項】
課題やレポートが注意事項に反する場合には単位取得が不可となる可能性があります。

1.作品が未完成と判断される場合

2.著しく創造性が低いと判断される作品

3.課題の指示（サイズ・形式・ルール等）が著しく守られておらず、正しく課題を提出したと判断できない場合

4.データの破損・劣化が激しく、提出した課題内容を確認することができない

5.記載事項を判読することが困難な場合（テキストの手書きは科目内で特別に指示がない場合は不可）

6.過去に制作した作品を流用している

7.二次創作作品やトレース等により第三者の権利を侵害する可能性がある

8.AI生成物が含まれている

9.法令または公序良俗に著しく反する

 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- デジタル画像技法論Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C1-1030-009',
  'デジタル画像技法論Ⅱ',
  'この授業ではクロッキーにより重心、バランス感覚を習得、画像を構成する物理法則を知る。併せて表現上のレクチャーを行う。デジタル化した現代社会で、コミュニケーション及び課題解決の手段として画像による可視化は重要な位置を占める。共有スピードが速く、表現の多様性とクオリティの進化が著しい画像メディアの現状を学ぶ。本学では知識を本質的なものとするため、手を動かし制作をすることで、身体感覚と思考を融合させる学修を行う。',
  2025,
  '[{"name":"下田 スケッチ","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  '本授業では重心移動、動き、シルエットの表現を習得しそれらが持つ意味性について考察する。現代におけるデジタル画像の役割について理解し、手を使い、画像を制作しつつ学ぶことによりそのプロセスと価値を知る。さらに、画像とそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、将来的には、いまや日本の基幹産業であるクリエイティブ産業を支え、さまざまな形で活躍する人材となる。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目

【課題内容】
イラスト制作・
レビューシート作成
【最終課題の
フィードバック方式】
講評動画
【特筆事項】
課題やレポートが注意事項に反する場合には単位取得が不可となる可能性があります。

1.作品が未完成と判断される場合

2.著しく創造性が低いと判断される作品

3.課題の指示（サイズ・形式・ルール等）が著しく守られておらず、正しく課題を提出したと判断できない場合

4.データの破損・劣化が激しく、提出した課題内容を確認することができない

5.記載事項を判読することが困難な場合（テキストの手書きは科目内で特別に指示がない場合は不可）

6.過去に制作した作品を流用している

7.二次創作作品やトレース等により第三者の権利を侵害する可能性がある

8.AI生成物が含まれている

9.法令または公序良俗に著しく反する

 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- デジタル画像技法論Ⅲ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-1-C1-0204-010',
  'デジタル画像技法論Ⅲ',
  'この授業ではコミックを題材に演出、カメラワークなどを学びその役割について考察する。併せて表現上のレクチャーを行う。デジタル化した現代社会で、コミュニケーション及び課題解決の手段として画像による可視化は重要な位置を占める。共有スピードが速く、表現の多様性とクオリティの進化が著しい画像メディアの現状を学ぶ。知識を本質的なものとするため、手を動かし制作をすることで、身体感覚と思考を融合させる学修を行う。',
  2025,
  '[{"name":"赤坂 アカ","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  '本授業ではコミックを題材にプロット、コマ割りを習得し作品の設計図であるネームを描くことで画像メディア演出の要諦を理解する。現代におけるデジタル画像の役割について理解し、手を使い、制作しつつ学ぶことによりそのプロセスと価値を知る。さらに、画像とそこから派生する作品を鑑賞、考察し、クオリティを見極める能力を培って、将来的に日本の基幹産業であるクリエイティブ産業を支え、さまざまな形で活躍する人材となる。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目

【課題内容】
イラスト制作（マンガ制作）・
レビューシート作成
【最終課題の
フィードバック方式】
添削
【特筆事項】
課題やレポートが注意事項に反する場合には単位取得が不可となる可能性があります。

1.作品が未完成と判断される場合

2.著しく創造性が低いと判断される作品

3.課題の指示（サイズ・形式・ルール等）が著しく守られておらず、正しく課題を提出したと判断できない場合

4.データの破損・劣化が激しく、提出した課題内容を確認することができない

5.記載事項を判読することが困難な場合（テキストの手書きは科目内で特別に指示がない場合は不可）

6.過去に制作した作品を流用している

7.二次創作作品やトレース等により第三者の権利を侵害する可能性がある

8.AI生成物が含まれている

9.法令または公序良俗に著しく反する

 2025年4月1日現在。内容が更新される場合があります。',
  '["社会接続科目"]',
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


-- 情報収集と伝達技術
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-1-C3-0034-009',
  '情報収集と伝達技術',
  'AIや検索技術、動画サービスの浸透に伴い、私たちの学び方も変わりつつある。本科目では、その変化を先取りし、AI等の最新ツールを使った最先端の学習方法を探求する。事前に与えられた課題を基に情報収集やコンテンツ制作を行い、授業内でその成果を発表・共有する。実践を通じて、技術の進化に適応する力を身につける。',
  2025,
  '[{"name":"深津 貴之","role":"客員講師"}]',
  1,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '情報収集から発表までの一連の作業を通して、デジタルツールを用いた情報収集能力、表現能力、コミュニケーション能力を身につける。最新技術の進化に柔軟に適応する力を身につけ、これからの学びや働き方を柔軟にアップデートする能力を身につける。',
  '発表、レポート',
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


-- 数理科学発展演習Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C3-0034-009',
  '数理科学発展演習Ⅰ',
  'この授業では「解析学１」「線形代数１」「解析学２」「線形代数２」に対応した演習を行う。数理系学問の理解を深めるためには、基礎演算力を高めることが必要である。各回の演習では、問題の解法について学修する。',
  2025,
  '[{"name":"湯山 孝雄","role":"講師"}]',
  1,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本授業を通じて、「解析学１」「線形代数１」「解析学２」「線形代数２」に対応した演習問題を解くことにより、授業で学んだ内容を深く理解できるようになる。自らの力で解けなかったとしても、解法を知ることを通じて学修に必要な素養を身につけ、計算力を養うことを目標とする。',
  'レポート100％',
  '前提科目
解析学1, 線形代数1, 解析学2, 線形代数2
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


-- Inter-universal Teichmüller Theory 1（宇宙際タイヒミューラー理論 1）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-1-C3-0034-010',
  'Inter-universal Teichmüller Theory 1（宇宙際タイヒミューラー理論 1）',
  ' [INTRODUCTION TO NUMBER THEORY]
introduction to number theory, starting with basic fundamental notions.

(日本語)
[数論入門]
数論の入門として、基礎的な根本概念をレクチャーする。
（なお、この授業は英語で開講する。）',
  2025,
  '[{"name":"Ivan Fesenko","role":"教授"}]',
  1,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'The goals of IUT1 are to provide a basic introduction to modern number theory and to teach some algebraic techniques used in number theory.
By the end of the module, students should be able to understand a range of concepts in number theory, have a knowledge of principal theorems and their proofs as treated, and appreciate the importance of number theory.

(日本語)
IUT1（本授業）では、モダンな数論への導入と、数論で使用されるいくつかの代数的技術を教える。
本授業を修了した学生は、数論の様々な概念を理解し、主要な定理とそれらが扱われる証明についての知識を修得し、数論の重要性を理解することができる。',
  'Report70%, Group Work30%',
  '前提科目
Nothing
後継科目
Inter-universal Teichmüller Theory 2（宇宙際タイヒミューラー理論 2）, Inter-universal Teichmüller Theory 3（宇宙際タイヒミューラー理論 3）,Inter-universal Teichmüller Theory 4（宇宙際タイヒミューラー理論 4）

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


-- 生きてゆくための禅
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-1-C3-0034-007',
  '生きてゆくための禅',
  'コミュニケーション・プレゼンテーションの能力、食やアートなどの文化を理解し、他人と共有する力－－社会で活躍するために必要なスキルは数々あるが、そのスキルを使う主体である「自分」とは何か？　坐禅と対話を通じた演習により「本当の自分」について考察してゆく。',
  2025,
  '[{"name":"細川 晋輔","role":"客員教授"}]',
  1,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '文化と思想の体系「禅」について知り、自身の内部や他者との関係性、社会の動向などを洞察する新しい視点を持つ。また「禅」の考え方を身につけることで、変わりゆく世界に対応し得る柔軟な姿勢と、真のタフネスを持った社会人となることを目的とする。',
  '各回のミニレポートによる理解度（30％）と、講義中の発言（20％　チャット含む）期末のレポートのクオリティ（50％）により採点する',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
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


-- 政治を超える哲学Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-1-C3-0034-008',
  '政治を超える哲学Ⅰ',
  '現代世界は政治に満たされている。哲学も政治の道具となっている。しかし、そもそも哲学とは「政治の外」を考える営みであり、また人間を政治から自由にする手段でもあった。
本授業では、講師の著作を導入として、そんな哲学の役割をあらためて考えるための基礎文献を紹介する。学生は現代思想の基礎概念（ポストモダン、公共性、リベラリズムなど）も学ぶことができる。
授業は基本的に講義形式だが、各回必ず質疑応答時間を取る。積極的な質疑は評価の対象となる。また学生発表を組み込んだ回も入れる（発表内容は別途授業内で指示する）。発表も評価点に加わる。なお、紹介する文献、学生発表の対象とする回などは授業の進行に応じて変更される可能性がある。',
  2025,
  '[{"name":"東 浩紀","role":"教授"}]',
  1,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本授業を通じて、学生は、性急な政治的問題設定の暴力性を学び、社会問題に対してより批判的な距離をもって接することができるようになる。',
  'レポート60%、発表・発言40%',
  '前提科目
なし
後継科目
政治を超える哲学Ⅱ

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


-- イラストとエンタテインメントA
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-1-D1-1030-001',
  'イラストとエンタテインメントA',
  '【ゲスト講師：フジワラヨシト】
この授業ではペイントツールの操作を学ぶとともにデジタル作画の特性について考察する。併せてゲストより表現上のレクチャーを行う。ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの技法について学ぶ授業である。共有スピードが速くトレンドの変化が著しいデジタルイラストに関し、本学では知識を本質的なものとするため、手を動かし制作をすることで、身体感覚と思考を融合させる学修を行う。',
  2025,
  '[{"name":"たいら あきら","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  '本授業ではペイントツールを用いて模写作品を完成させ、ツールの基礎知識を習得することによりイラストレーションへの理解を深める。イラストレーションの役割について理解し、手を使い、制作しつつ楽しみながら学ぶことによりそのプロセスと価値を知る。さらに、イラストとそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目

【課題内容】
資料作成・
イラスト制作
【最終課題の
フィードバック方式】
個別講評
【特筆事項】
課題やレポートが以下に該当する場合には、単位取得が不可となる可能性があります。

1.模写作品が未完成と判断される場合

2.著しく創造性が低いと判断される作品の場合

3.課題の指示（サイズ・形式・ルール等）が著しく守られておらず、正しく課題を提出したと判断できない場合

4.データの破損・劣化が激しく、提出した課題内容を確認することができない場合

5.記載事項を判読することが困難な場合
（テキストの手書きは科目内で特別に指示がない場合は不可）

6.過去に制作した作品を流用している場合

7.模写ではなくトレース（元となるイラストの上にレイヤーを重ねる等して敷き写すこと）を行っていると判断される場合

8.第三者の権利を侵害する可能性がある場合

9.AI生成物が含まれている場合

10.法令または公序良俗に著しく反する場合

 2025年4月3日現在。内容が更新される場合があります。',
  '["自由科目"]',
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


-- イラストとエンタテインメントB
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-1-D1-1030-002',
  'イラストとエンタテインメントB',
  '【ゲスト講師：絵葉ましろ】
この授業では代表的な構図手法と構図の良し悪しを学び、一枚絵の基本的な設計について考察する。併せてゲストより表現上のレクチャーを行う。ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの技法について学ぶ授業である。共有スピードが速くトレンドの変化が著しいデジタルイラストに関し、本学では知識を本質的なものとするため、手を動かし制作をすることで、身体感覚と思考を融合させる学修を行う。',
  2025,
  '[{"name":"六番","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  '本授業では代表的な構図、タブーとされる構図を習得し視線誘導を意識した一枚絵の構造を学ぶ。イラストレーションの役割について理解し、手を使い、制作しつつ楽しみながら学ぶことによりそのプロセスと価値を知る。さらに、イラストとそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目

【課題内容】
資料作成・
イラスト制作
【最終課題の
フィードバック方式】
添削
【特筆事項】
課題やレポートが注意事項に反する場合には単位取得が不可となる可能性があります。

1.作品が未完成と判断される場合

2.著しく創造性が低いと判断される作品

3.課題の指示（サイズ・形式・ルール等）が著しく守られておらず、正しく課題を提出したと判断できない場合

4.データの破損・劣化が激しく、提出した課題内容を確認することができない

5.記載事項を判読することが困難な場合（テキストの手書きは科目内で特別に指示がない場合は不可）

6.過去に制作した作品を流用している

7.二次創作作品やトレース等により第三者の権利を侵害する可能性がある

8.AI生成物が含まれている

9.法令または公序良俗に著しく反する

 2025年4月3日現在。内容が更新される場合があります。',
  '["自由科目"]',
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


-- イラストとエンタテインメントC
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-1-D1-0204-003',
  'イラストとエンタテインメントC',
  '【ゲスト講師：桜井輝子】
この授業では彩色の基礎と表現手法を学び、表現に適したスタイルについて考察する。併せてゲストより表現上のレクチャーを行う。ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの技法について学ぶ授業である。共有スピードが速くトレンドの変化が著しいデジタルイラストに関し、本授業では知識を本質的なものとするため、資料制作を行うことで、知識と思考を融合させる学修を行う。',
  2025,
  '[{"name":"早川 涼太","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  '本授業では色の持つ特性を習得し、既存の作品群において色彩が担っている役割について考察する。イラストレーションの役割について理解し、資料を制作しつつ楽しみながら学ぶことによりそのプロセスと価値を知る。さらに、イラストとそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目

【課題内容】
資料作成
【最終課題の
フィードバック方式】
講評動画
【特筆事項】
課題やレポートが注意事項に反する場合には単位取得が不可となる可能性があります。

1.作品が未完成と判断される場合

2.著しく創造性が低いと判断される作品

3.課題の指示（サイズ・形式・ルール等）が著しく守られておらず、正しく課題を提出したと判断できない場合

4.データの破損・劣化が激しく、提出した課題内容を確認することができない

5.記載事項を判読することが困難な場合（テキストの手書きは科目内で特別に指示がない場合は不可）

6.過去に制作した作品を流用している

7.二次創作作品やトレース等により第三者の権利を侵害する可能性がある

8.AI生成物が含まれている

9.法令または公序良俗に著しく反する
 2025年4月3日現在。内容が更新される場合があります。',
  '["自由科目"]',
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


-- イラストとエンタテインメントD
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-1-D1-0204-004',
  'イラストとエンタテインメントD',
  '【ゲスト講師：荻pote】
この授業では、コンテンツの顔であるキービジュアルについて学ぶ。コンセプトの考え方、掘り下げ方を知り、訴求力のあるビジュアルとは何かを考える。ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの技法について学ぶ授業である。共有スピードが速くトレンドの変化が著しいデジタルイラストに関し、知識を本質的なものとするため、手を動かし制作をすることで、身体感覚と思考を融合させる学修を行う。',
  2025,
  '[{"name":"たいら あきら","role":"客員講師"}]',
  1,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  'エンタテインメント作品のキービジュアル制作を通してユーザー目線の思考力を身につけ、コンセプトの掘り下げ方を理解する。イラストレーションの役割について理解し、手を使い、制作しつつ楽しみながら学ぶことによりそのプロセスと価値を知る。さらに、イラストとそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目

【課題内容】
イラスト制作・
レビューシート作成
【最終課題の
フィードバック方式】
添削
【特筆事項】
課題やレポートが注意事項に反する場合には単位取得が不可となる可能性があります。

1.作品が未完成と判断される場合

2.著しく創造性が低いと判断される作品

3.課題の指示（サイズ・形式・ルール等）が著しく守られておらず、正しく課題を提出したと判断できない場合

4.データの破損・劣化が激しく、提出した課題内容を確認することができない

5.記載事項を判読することが困難な場合（テキストの手書きは科目内で特別に指示がない場合は不可）

6.過去に制作した作品を流用している

7.二次創作作品やトレース等により第三者の権利を侵害する可能性がある

8.AI生成物が含まれている

9.法令または公序良俗に著しく反する

 2025年4月3日現在。内容が更新される場合があります。',
  '["自由科目"]',
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

