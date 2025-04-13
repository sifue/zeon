-- ZEONデータベース構築スクリプト
-- 03_initial_data_subjects_grade3.sql
-- 3年次の科目データの登録


-- クラウドコンピューティング技術
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-1030-001',
  'クラウドコンピューティング技術',
  'この科目では、現代のWebアプリケーション運用に欠かせないクラウドコンピューティング技術について学ぶ。クラウド上でアプリケーションを展開する際のメリット・デメリットが理解できるだけでなく、様々なクラウドサービスを使い分け、実際に活用できる基礎知識が身につく。学修者は、その知識を活かして、クラウド技術を用いた効果的なWebアプリケーション開発・運用ができるようになる。',
  2027,
  '[{"name":"津野 貴大","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'AWS Academyを活用し、AWS上で手を動かしながら学習していく。専門用語の理解のみならず、実際にAWS上にWebアプリケーションが構築できるようになることを目標とする。AWS Cloud Practitioner試験の試験範囲に準じた幅広い知識を習得することを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
Webアプリケーション開発4
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


-- 関数型プログラミング
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-1030-002',
  '関数型プログラミング',
  'Scalaというプログラミング言語を用いて、関数型プログラミングの思考と技法を身につける。具体的には、関数や多相関数の設計、エラー処理、リスト操作や遅延ストリームの実装について理解を深める。最終目標として、パーサーコンビネーターのライブラリを実装し、自分だけのプログラミング言語を作れるようになることを目指す。',
  2027,
  '[{"name":"吉村 総一郎","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'この授業を終了した時点で、学生はScalaを使った関数型プログラミングに対する深い理解を持ち、具体的なアプリケーション作成に活かすことができるようになることを目標とする。また、最終的にはパーサーコンビネーターのライブラリを作成し、自分のプログラミング言語を作るための基礎となるスキルを身につけることを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
オブジェクト指向プログラミング
後継科目
並行処理プログラミング
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


-- オートマトンと形式言語理論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-1030-003',
  'オートマトンと形式言語理論',
  'この科目では、オートマトンをはじめとする「計算機のモデル」のパラダイムと、「言語」という概念を数学的に定式化した「形式言語」という枠組みの 2 つをテーマとして取り上げ、一見距離のあるこれらの 2 つの間の密接な関係と、この 2 つが織りなす「計算」という現象に肉薄するとともに、具体的なプログラミング言語や計算機の実装方法や規格書などを垣間見ることで、普段はとりたてて詳しく追いかける機会の少ない「計算」「計算機」「プログラミング言語」といったものを掘り下げて「脱・神秘化」(demystify) していく。
さらに、正則言語や文脈自由言語などの言語クラスが持つソフトウェアエンジニアリング領域へのきわめて重大な応用を学ぶことで、実践的技術と理論的直感の両方を培う。',
  2027,
  '[{"name":"佐藤 弘崇","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '計算・計算機・プログラミング言語について一段階深く掘り下げて把握し、特に「プログラミング言語や計算機などの規格書を見に行く」という選択肢の存在を意識できるようになる。また、実践的な技術を養った上で、それらを活用して具体的な問題解決ができるようになることを目標とする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
コンピューターサイエンス概論
後継科目
なし

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


-- 暗号技術とその応用
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-1030-004',
  '暗号技術とその応用',
  '本科目では、共通鍵暗号や公開鍵暗号、電子署名などの暗号技術を取り上げ、これらの技術がもたらす安全性とその限界、代表的な実現方法を理解する。歴史的な暗号技術も取り上げ、暗号技術が社会（政治、工業、技術）の発展とともに発展してきたことも理解する。さらに、我々の社会を支える通信技術が、暗号技術の組み合わせにより構成される仕組みを理解する。',
  2027,
  '[{"name":"順次公開予定","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '本科目を受講することで、代表的な暗号技術を列挙し、それが通信の中でどのような目的でどのように使われているか説明できるようになる。特に、暗号技術を組み合わせて構成される暗号プロトコルにおける、暗号技術の役割を説明できるようになる。また、それぞれの暗号技術によって保障される安全性とそうでない安全性について説明できるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
情報セキュリティ概論
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


-- データベース運用実践
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-0204-005',
  'データベース運用実践',
  '世の中には星の数ほどのデータがある。これらのデータを有効活用するためには、秩序を持ってデータを保存できる必要がある。
秩序を持ったデータは、検索も早く、目的のデータを素早く発見でき、有益なデータを見つけるために必要不可欠である。
この授業では、データベースのインストールから運用方法まで学ぶ。
特にPostgreSQLの構築・運用方法について学ぶことができる。',
  2027,
  '[{"name":"折原 ダビデ竜","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '学生はPostgreSQLの環境構築能力を獲得し、SQLコマンドを使いこなし、データの取得や追加、更新、削除を行えるようになる。詳細な検索クエリの利用能力を身につけ、データの集計を行える。さらに、インデックスを利用したテーブル作成とデータ検索に対する理解を深め、効率の良いデータ管理方法を修得する。これらを通じて、学生はデータベースを使った開発経験を積み、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。',
  '確認レポート 50% , 単位認定試験 50%',
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


-- 並行処理プログラミング
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-0204-006',
  '並行処理プログラミング',
  'この授業では、マルチスレッドによる並行処理の基本を学ぶ。最初に、スレッドやスレッドセーフという概念、そしてメモリの可視性と逸出という重要なテーマについて深める。その後は、Javaの並行処理の仕組みを学びつつ、他の言語（アセンブリ、C言語、Rust言語）における並行処理の取り組みも探求する。また、Akka Actorを利用したスケーラビリティと耐障害性を兼ね備えたプログラミングも理解し、一覧取得システムの開発に至るまでを学ぶ。',
  2027,
  '[{"name":"吉村 総一郎","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'この授業を受けた後、学生は基本的な並行処理プログラミングを理解し、適切に使用することができるようになることを目標とする。具体的には、スレッドやスレッドセーフな設計、Javaの並行処理の仕組みを活用した実践的なプログラム作成能力を身につけ、更には他言語における並行処理の手法を理解する。最終的にはAkka Actorを利用した並行処理プログラミングのスキルを修得し、実世界の問題解決ができる力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
関数型プログラミング
後継科目

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


-- 画像処理論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-0204-007',
  '画像処理論',
  'コンピューターグラフィックスと画像処理を幅広く習得し、アルゴリズムや数学的知識の活用を理解できるようになる。講義では画像処理の概要から、モデリング、レンダリング、アニメーション、画像変換、パターン認識、復元、ビジュアル情報処理システムなど多岐にわたるトピックを網羅。知的財産権や情報セキュリティにも触れ、実用的なスキルを身につけることができる。',
  2027,
  '[{"name":"櫻井 快勢","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '画像処理論では、コンピューターグラフィックスと画像処理の基礎から応用までを広範に学修する。画像処理の基本的な概念と理論、モデリング、レンダリング、アニメーション、画像変換、パターン認識、復元、ビジュアル情報処理システムといったコンピュータを用いた視覚的な操作や表示に関する内容を取り上げていく。また、知的財産権や情報セキュリティについても理解を深めることで、実世界での問題解決に必要な知識を身につける。講義の中で、実例の紹介やアルゴリズムと数学的知識理論の学修を経て、実践を含めた画像処理の理論の習得することを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
コンピューターサイエンス概論
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


-- 論理回路概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-0204-008',
  '論理回路概論',
  'コンピューターがどうやって「計算」をしているのかという仕組みを、ビットのレベルまで掘り下げて把握していく。まずは、2 進演算の基礎となるブール代数と論理ゲートを知るところから始める。これらの原理を理解した上で、ハードウェア記述言語 (HDL) を用いて、自分自身で論理回路を作り出す。授業の前半を通じて組合せ回路に慣れ親しみ、その後でレジスタ・メモリ・カウンタといった時間の概念が絡む部品を構成し、コンピューターの中核となる部分を作り上げていく。最終的には、機械語を使ったプログラミングを実際に行い、「ひとつずつ命令を処理する CPU」という素朴なモデルを身につける。',
  2027,
  '[{"name":"佐藤 弘崇","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '論理ゲートとブール演算の原理を理解し、それを活用して自分自身で組合せ回路を設計できるようになる。そして、基本的なコンピューター構成要素であるレジスタ・メモリ・カウンタの作り方を学び、これらを活用することで、複雑な計算を実行しうる素朴な CPU を組み立てられるようになることを目標とする。そして、実際にその CPU の機械語を用いてのプログラミングを体験することで、現代のコンピューターがどのような基礎の上に在るのかということについて類推を利かせ、コンピューターサイエンスの世界に立つことを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
コンピュータ概論
後継科目
なし

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


-- データサイエンス実践Ⅰ（アンケート）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-1030-009',
  'データサイエンス実践Ⅰ（アンケート）',
  'マーケティング分野では顧客の声を収集するためや市場調査のためにアンケート調査を行い、その分析結果をビジネスの意思決定に役立て、また心理学や社会学においてはさまざまな状況を把握するためにアンケート調査を行い、その結果を分析することが多い。適正な結果を導くためには、状況を正しく把握できるアンケート調査票を設計し、適正な方法で実施し、データを収集して分析をしなければならない。本授業では、有効なアンケートを実施するための手続について、アンケートの設計方法から分析の方法までを実習しながら学ぶ。分析には各種統計手法が必須であるため、第2～4回の授業では、統計的手法の復習をしながら分析手法を確認する。',
  2027,
  '[{"name":"赤倉 貴子","role":"客員教授"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'アンケート調査票の設計方法を理解し、実際に作成できるようになる。また、適正な実施手順を理解し、実施した結果、収集したデータを統計解析手法を用いて分析できるようになる。自由記述に関するテキストデータの分析の詳細は自然言語処理の方法で扱うので、本授業では、主に名義尺度、順序尺度、間隔尺度、比例尺度で収集されたデータの分析を行う知識を習得することを目標とする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
データサイエンス概論，統計学入門，R言語プログラミング
後継科目
自然言語処理の方法

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


-- データサイエンス実践Ⅱ（モデリング）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-1030-010',
  'データサイエンス実践Ⅱ（モデリング）',
  '統計モデリングの授業では、正規分布を仮定した線形回帰を出発点として、一般化線形モデルや近年のニューラルネットベースの確率モデリング手法を含む、様々な発展的な確率モデルについても取り扱う。個々の手法を取り扱うにあたり、必要に応じて最急勾配法やサンプリング法など、パラメータ推定、ベイズ推論に必要なアルゴリズムや推定・推論結果の評価方法についても学ぶ。',
  2027,
  '[{"name":"田沼 巌","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '統計的推論の基礎から発展的なモデリング手法、そしてその実用的な適用までを網羅的に学び、各種フレームワークを活用しそれらを実践的に活用するスキルを習得する。多くの統計モデリング手法を俯瞰することによって、数理統計学の基本的な考え方について理解を深め、その知識を活用する能力を養うことに加えて、近年盛んに研究・実用化されているディープラーニングを用いた確率的モデリング手法を理解するための基礎的な能力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
Pythonプログラミング，機械学習概論, 解析学1, 線形代数1
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


-- データサイエンス実践Ⅲ（時系列）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-0204-011',
  'データサイエンス実践Ⅲ（時系列）',
  '時系列データの種類やその実世界における応用を踏まえ、時系列データ向けの様々な統計的手法を学ぶ。ARIMAやGARCHモデル等古くから広く使われるモデルだけでなく、近年注目されている因果推論に関連した手法やProphetやCausalImpact等、実用上重要な手法についても解説する。各手法の用途やツールの使い方だけでなく、その背後にある統計モデルの取り扱い、考え方や、パラメータの推定、推論のための手法についても触れていく。',
  2027,
  '[{"name":"田沼 巌","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'ドメインによって用途が多岐に渡る時系列データに対する統計的手法を広く俯瞰することによって、与えられた時系列データに対して仮説を立て、それに対応する適切な手法を選択、実際に自身で手を動かすことのできる実践的な分析スキルを獲得し、様々な時系列データに対応可能な統計的分析者としての基礎能力を養う。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
データサイエンス概論，統計学入門，Pythonプログラミング，機械学習概論, 解析学1, 線形代数1
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


-- ディープラーニング3
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-1030-012',
  'ディープラーニング3',
  '本講義では、深層学習研究における発展的な内容を扱う。
• Chat-GPTやBingなどの大規模言語モデルを含めた自然言語処理について、概観とその技術について学ぶ。
• グラフ構造を持つデータを柔軟に扱うグラフニューラルネットワークを取り上げ、データ構造に適したモデルについて学ぶ。
• ニューラルネットワークがどう学習しているかを理解するための手法である説明可能性について取りあげ、社会における深層学習の重要性を学ぶ。',
  2027,
  '[{"name":"河野 慎","role":"講師（予定）"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '• 自然言語処理の概観、深層学習によるNLPの数学的な基礎と課題、最近の大規模言語モデルの研究動向を理解し、説明できる。
• 深層学習を用いた言語モデルの構築・実装ができる。
• グラフニューラルネットワーク（およびグラフ畳み込み）の概念とこれらが有用なデータの種類やアプリケーションの説明と実装ができる。
• DNNの推論の根拠を可視化する代表的な手法について現在の情報社会におけるその必要性とともに2つ以上説明し、実践できる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ディープラーニング1
後継科目
なし

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


-- ビッグデータ分析実践
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C1-1030-013',
  'ビッグデータ分析実践',
  '企業におけるデータ分析は、研究で使用するデータセットよりも遥かに複雑であるとともに要点も異なる。
この授業では、実際のニコニコのデータで分析することを通して、実務的なデータ分析のノウハウを提供する。',
  2027,
  '[{"name":"塚本 圭一郎","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'この科目では、研究におけるデータ分析とビジネスにおけるデータ分析の差異を理解し、実務的なデータ分析のアプローチの習得を目指す。ユーザー分析や購買行動分析、ファネル分析といったマーケティングで使用する分析アプローチについて学ぶのみならず、データの前処理やビジネスグロッサリーの定義といったデータ分析を行う際に事前に行わなければならない事柄についても知る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
データサイエンス概論，ビッグデータ分析概論
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


-- 群論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C1-1030-001',
  '群論',
  '現代数学は抽象的である。抽象的であるからこそ、文脈によらず幅広い応用が可能である。群論は「対称性」を抽象化した概念であり、数学はもちろん 自然科学・データ解析 など対称性があればどんなものにも適用が可能な理論である。
本講義では、抽象的な数学の入り口として群論を学びつつ、群論がどのように数学や物理の中で現れるのかを学ぶ。',
  2027,
  '[{"name":"順次公開予定","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '・群の定義、具体例に親しむ
・商の概念を理解する (準同型定理, 商空間)
・群の表現論の基礎を学ぶ
・群論が数学や物理の中でどのように表れるのかを概観する',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
線形代数1 , 線形代数2 
後継科目
環論, ガロア理論

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


-- 位相空間
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C1-0204-002',
  '位相空間',
  '位相空間論は現代の数学を記述するための基本的な言語であり、多様体やトポロジーを学ぶ上で基礎となるものである。位相空間と連続写像の定義から始めて、集合論的な操作により位相空間を構成する方法を学んだ後、分離公理・コンパクト性・連結性といった、位相空間の性質について学ぶ。',
  2027,
  '[{"name":"湯山 孝雄","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '位相空間が距離空間の一般化であることを理解する。位相空間や連続写像が様々な方法で定義できることを理解する。集合論的操作によって新たな位相空間を構成する方法を理解する。コンパクト空間や連結空間の基本的な性質を理解する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
距離空間
後継科目
多様体, トポロジー

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


-- 多様体
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C1-0204-003',
  '多様体',
  '曲がった空間での微積分を行う枠組みである「多様体」について、その基本概念からより高度な幾何学を展開するための道具までを、一貫して学修することを目的とする。具体的には、多様体の定義や基本的な例の紹介から始め、その上での微分の枠組みを学ぶ。接空間やベクトル場、微分形式という基本的な道具の使い方を修得し、ベクトル束やリー群、リー代数を通じて幾何学を深く理解する。さらに、リーマン計量や測地線といった微分幾何学の概念を組み込むことで、数理科学の高度な理解が可能となる。この結果として、現代数学の中で重要な位置を占める多様体についての理解を深め、その応用力を身につける。',
  2027,
  '[{"name":"梅崎 直也","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '「多様体」は現代数学の根幹をなす概念で、"曲がった空間"での微積分を可能にするための枠組みである。本科目を修得すると、多様体の定義からベクトル束やリー群、リー代数などの高度な幾何学を展開するための道具を理解し、使用することが可能となる。また、微分幾何学の基本的な概念であるリーマン計量や測地線について理解することで、多様体がもつ幾何的性質を詳しく調べるための手段を学修する。これにより、数学において空間という概念がどのように拡張されたかを理解する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
線形代数2, 解析学3, 位相空間
後継科目
ゼミ（数理科学特論ゼミⅠ）,ゼミ（数理科学特論ゼミⅡ）,ゼミ（数理科学特論ゼミⅢ）,ゼミ（数理科学特論ゼミⅣ）

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


-- 圏論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C1-1030-004',
  '圏論',
  '圏論の基本的な概念から現代数学への応用までを、数学的構造や構造と準同型の考え方についての具体的な例とともに学ぶ。まずは順序集合やモノイドを用いて圏と関手の理解を深め、自然変換、表現可能関手と米田の補題、普遍性、極限と余極限などを学んだ上で、関手と極限余極限の関係、随伴について学ぶ。最終的にはモナドと随伴、モナドの代数、カン拡張について理解を深め、圏論のさまざまな概念がカン拡張を通して理解できるという視点を提示する。さらに、モノイダル圏やモデル圏を通して、圏論的な概念が現代的な数学にどのように応用されるかを学ぶ。',
  2027,
  '[{"name":"梅崎 直也","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '圏論を学ぶことで、多様な数学的構造とその間の対応を把握し、それらを用いて複雑な問題を分析する能力が身につく。また、普遍性や極限、随伴などの概念を用いて数学的な問題解決術を研鑽する。これにより、様々な視点から物事を客観的に分析し、独自の解を見つけ出す力が養われる。これらの知識と技術は、新たな解決策を見つけ出すための基盤となる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
集合と論理，数理構造の発見と活用
後継科目
ゼミ（数理科学特論ゼミⅠ）,ゼミ（数理科学特論ゼミⅡ）,ゼミ（数理科学特論ゼミⅢ）,ゼミ（数理科学特論ゼミⅣ）

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


-- 数理統計
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C1-0204-005',
  '数理統計',
  '数理統計では統計学の知識を深め、より高度な理論を学ぶ。まずは初等統計学の復習から始め、確率変数と確率分布について理解を深める。その上で、多次元の確率分布や各種の確率分布を知り、それらの特性や関連性を把握する。極限定理、標本分布などの理論に触れ、十分統計量、尤度関数等を通じて最新の統計理論を学ぶ。また、統計的推測や仮説検定、区間推定等の枠組みを学び、それらの手法を使った具体的な統計解析も行う。最後には線形単回帰や重回帰、分散分析など実践的な話題も扱う。統計学の理論と応用を両方学び、データ分析の幅を広げることを目指す。',
  2027,
  '[{"name":"梅崎 直也","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '数理統計を通じて、様々な統計モデルを理解し適用する力を身につける。確率変数や確率分布、極限定理、標本分布などの統計学的概念を理解し、それらを利用してデータを分析する能力を養う。尤度関数や情報量など、統計的推測に必要な概念を修得し、それらを用いて統計的検定や線形回帰分析を行う力を身につける。これらの知識を元に、統計的な問題解決能力を獲得する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
線形代数2, 解析学2, 統計学入門
後継科目
計算機実験で学ぶ確率とモンテカルロ法,ゼミ（数理科学特論ゼミⅠ）,ゼミ（数理科学特論ゼミⅡ）,ゼミ（数理科学特論ゼミⅢ）,ゼミ（数理科学特論ゼミⅣ）,ゼミ（量子科学技術）

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


-- 電磁気学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C1-1030-006',
  '電磁気学',
  '古典物理学は、力学と電磁気学と熱力学の３つからなり、現代物理学の基礎となる学問である。古典物理学の学修は、現代の科学技術を基本原理から理解するために必要不可欠である。本講義は、高校での電磁気学の履修は前提とせず、電磁気学を初めて学ぶ人を対象に、電磁気学の講義を行う。電磁気学は、電気、磁気、光などの物理法則を明らかにする学問分野であり、化学現象や電化製品を基礎づける。本講義では、最小限の労力で電磁気学の全体像を把握するために、電磁気学の基本原理を与えるマクスウェル方程式を学んだ後、マクスウェル方程式がどのように電気、磁気、光などの物理法則を説明するかを学ぶ。',
  2027,
  '[{"name":"作道 直幸","role":"准教授"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '電磁気学の全体像の理解とマクスウェル方程式の具体的な適用例について理解を深める。電気、磁気、光などの物理法則を明らかにする電磁気学の理論体系を理解し、それらが現代の科学技術をどのように基礎づけているかを理解する。電磁気学の原理を学修することで、情報技術や社会基盤と密接に関わる数理的な思考力を育む。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
力学、解析学２、線形代数１
後継科目
量子力学，熱統計力学

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


-- 量子力学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C1-0204-007',
  '量子力学',
  '量子力学とは何か、その歴史と基本的な理論体系を学ぶ講義である。線形代数や微分積分の知識を前提に、量子性と呼ばれる４つの特性「物理量の離散化」「状態の重ね合わせ」「不確定性」「エンタングルメント」を学ぶ。できるだけ計算の煩雑性に惑わされずこれらの本質に迫るため、２準位量子系（量子ビット）やダイヤモンドのNV中心などの有限次元モデルを中心に講義する。オンデマンド授業という形式をとり、各回の講義内容は繰り返し見直し、必要に応じてWebでの調査も行いつつ、理解を深めることを目指す。評価は確認テストとレポート、及び単位認定試験による。本講義を通じて、量子力学の考え方を理解しそれを用いて物理現象を説明できる力を養う。',
  2027,
  '[{"name":"池田 達彦","role":"准教授"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '量子力学とは何か、どのような対象に適用されるのか説明できるようになる。４つの量子性「物理量の離散化」「状態の重ね合わせ」「不確定性」「エンタングルメント」について、一般書レベルを超えて専門的に説明ができるようになる。また、シュレーディンガー方程式を用いて量子系を解析する方法を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
線形代数2 , 解析学2 , 力学, 電磁気学
後継科目
量子コンピュータ演習, ゼミ（量子科学技術）

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


-- 熱統計力学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C1-0204-008',
  '熱統計力学',
  '本科目では、密接に関係する２つの物理学「熱力学」および「統計力学」を体系的に理解させる。これらはマクロとミクロの世界を繋ぐ普遍的な法則から成り、現代物理学に欠かせない理論体系である。前半の熱力学では、その基本法則の内容を具体例を通して順に解説する。後半の統計力学では、カノニカルアンサンブルを軸に様々な具体例を解析することを通じて、気体や固体のマクロな性質の理解を深めるとともに、統計力学の運用力を養う。',
  2027,
  '[{"name":"池田 達彦","role":"准教授"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '熱力学の第0,1,2,3法則の内容を述べ、それぞれの意味することを具体例を交えながら説明できる。エントロピーとは何か、熱力学と統計力学のそれぞれの観点から説明できる。カノニカル分布を用いて、理想気体などの具体例において、熱力学関数を計算できる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
解析学2 、力学 
後継科目
ゼミ（量子科学技術）

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


-- 統計学を哲学する
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C1-1030-001',
  '統計学を哲学する',
  '現代社会・科学において、統計学はデータから結論を導き出す装置として、特権的な役割を担っている。しかしなぜ統計学は、こうした役割を果たすことができるのだろうか？本講義では、統計という語で一般にイメージされるような数学的操作ではなく、むしろそうした数理の背景にある「考え方」を哲学的観点から捉えることで、その答えを探る。',
  2027,
  '[{"name":"大塚 淳","role":"教授"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '統計学とはどのようなことをする学問であり、科学的推論のなかでどのような役割を果たしているのか、という概観を、複雑な数式に頼らず理解できるようになる。データの要約・仮説の検証・予測・因果推論など、一言で「推論」といっても多様な形式があり、またそうした目的上の違いに応じて異なった統計学的手法が必要とされることを知る。それらの目的はそれぞれ異なった難しさをはらんでいるが、そうした難しさを理解した上で、それに対して統計学ができること／できないことを見定められるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
統計学入門
後継科目
統計学展望、AI時代の科学と哲学

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


-- 日本大衆文化史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C1-1030-002',
  '日本大衆文化史',
  'まんが、アニメなど現代日本の大衆文化の近代史を「西欧」のグローバル化に呼応するローカライズとして冷静に捉え、近代おたく文化の「方法」と「美学」を中心に1900-2000の「100年のおたく史」を概観する中で「日本ポップカルチャーの伝統起源論」や「作者」「オリジナル」をめぐる思い込みを解体し文化を見る目を再起動する「歴史の見方」を講義する。',
  2027,
  '[{"name":"順次公開予定","role":"講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'まんが・アニメ・ゲーム等を領域ごとに分断された政治や社会から乖離した歴史ではない総合的な文化の歴史の見方を身につける。例えば「シン・エヴァンゲリオン」のポスターと同じ構図の画像を歴史的に遡行することで辿り、普段、気にせず受け止めていた表現に「何故」を発見し、それを探究する好奇心と探求の方法を学び、同時に、過去100年の「おたく文化」すなわち複製文化やメディア表現を理解することで次の100年を探求する力を養う。
',
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


-- 法学Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-3-C1-1030-001',
  '法学Ⅱ',
  '法律は私たちの日々の生活を規律している。日常で刑事法が問題となるのは例外的な場合であるが、民事法については気づかないまま触れているであろう。この授業では、人と人、人と物との関係を規律する民法の基本的な構造を描き出し、それによって、人との間で何らかの紛争が生じたときに、法的知識を駆使して相手と交渉し、説得するという武器としての法的思考を伝達する。',
  2027,
  '[{"name":"山口 真由","role":"教授"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '自らを取り巻く具体的な問題について民法の法則に基づいて分析し、自らや相手にどのような権利または義務が生じているのかを理解し、それをベースに交渉する能力を身につける。民法の解釈が決して一通りに定まるものではないと理解したうえで、判例や通説を批判的に検討し、異なる視点から法を多角的に分析して、ゼロサムでない多くの当事者がより受け入れやすい結論を探る力を手にする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
法学Ⅰ
後継科目
ゼミ（多様化する家族）
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


-- 戦後日本史2
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-3-C1-0204-002',
  '戦後日本史2',
  '本講義では、首相秘書官や関係者など政権中枢に近い人々をゲストに招き、「なま」の声をもとに戦後日本の「オーラル・ヒストリー」を描いていく。 敗戦後の民主化への努力、平和主義と日米同盟、高度経済成長とその歪み、バブルの崩壊と低成長といった、度重なる「板挟み」において、当時の日本のリーダーたちはどのような観点から、どのように「決断」をしたのだろうか。本講義では、消費税を導入したことで知られる竹下登政権から、戦後最長期政権となった安倍晋三政権までを扱う。',
  2027,
  '[{"name":"順次公開予定","role":"講師"},{"name":"山内 康英","role":"教授"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'この授業を通じて、戦後の日本政治を、さまざまな「決断」の連続として捉え直すことができる。具体的には、政権運営の「なま」の声を聞き、複数の選択肢とジレンマの中で、リーダーたちがどのような選択をおこなってきたのかを知ることで、戦後日本の軌跡を多角的に検討する視点を身につけることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
戦後日本史1
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


-- ゲーム制作論応用
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-3-C1-1030-001',
  'ゲーム制作論応用',
  'この授業では、シューティングゲームからRPG、音楽ゲーム、オンラインゲームまで、一流のゲームクリエイターの実際の仕事を、各ジャンルごとのゲームデザインのケーススタディとして取り上げる。本授業を通して、一流の作品がなぜ一流であるかを理解する観察眼や、ものの見方の解像度を高める。いくつかの授業ではゲストスピーカーをお呼びし、実際の仕事についてディスカッションを行う。',
  2027,
  '[{"name":"細井 浩一","role":"教授"},{"name":"平 信一","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '各ジャンルの一流のクリエイターが実際にどのようにゲームを作り、どのようなデザインを施したかを理解することで、実践的な制作理論の思考を身につける。本授業を通して、世界に通用するものづくりのあり方への解像度を高め、優れたゲームがなぜ優れているのか、いかに優れているのかを論じることができるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
日本のゲーム産業史、ゲーム制作論基礎
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


-- デジタル画像活用Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-3-C1-1030-001',
  'デジタル画像活用Ⅰ',
  'デジタル画像活用の授業では、ビジネスシーンにおける画像の役割を広く学んでゆく。共有スピードが速く、表現の多様性とクオリティの進化が著しい画像メディアの現状と可視化による課題解決を学ぶ。知識を本質的なものとするため、制作をすることで、身体感覚と思考を融合させる学修を行う。この授業では視覚のみに頼らず、感じたものを表現することを命題に模写を実践し、観察力を養う。併せて表現上のレクチャーを行う。',
  2027,
  '[{"name":"下田 スケッチ","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  '現代におけるデジタル画像の役割について理解し、手を使い、画像を制作しつつ学ぶことによりそのプロセスと価値を知る。さらに、画像とそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、将来的には、いまや日本の基幹産業であるクリエイティブ産業を支え、さまざまな形で活躍する人材となる。本授業では観察力を強化するとともに固有色にとらわれない彩色を身につけ、より幅広い表現について考察する。',
  '提出物100％',
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


-- デジタル画像活用Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-3-C1-0204-002',
  'デジタル画像活用Ⅱ',
  'デジタル画像活用の授業では、ビジネスシーンにおける画像の役割を広く学んでゆく。この授業ではプロデュース・ディレクションの視点に立ち、エンタテインメントや広告・宣伝の現場における画像を使ったビジネスのあり方と可視化による課題解決を学ぶ。発注のしかたやスケジュール管理など制作管理のフロー、トラブルシュートの事例などを学修し、イラストレーターを始めとしたクリエイトサイドとのコミュニケーションを身につける。',
  2027,
  '[{"name":"大塚 勇","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  'デジタル画像が社会で活用されてゆくにあたっては、クリエイトとディレクション両サイドの円滑なコミュニケーションが重要である。この授業では主にディレクションの視点に立ち、指示書制作と、クリエイターの技術力、スケジュールなどを考慮しながら成果物に対し的確なFBを行うことができるようになることを目指す。それにより、コンテンツ産業をはじめとしたビジネスの現場における分業体制と、それぞれの役割を学ぶ。',
  '提出物100％',
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


-- ゲームプログラミング演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C3-1200-014',
  'ゲームプログラミング演習',
  'この科目では、Unityというゲーム制作ツールを使って2D/3Dゲームの制作やVR/ARの開発の手法を学修する。作成するゲームは、初心者でも簡単に作れるものから徐々に難易度を上げ、より複雑なものに挑戦する。プロフェッショナルなゲームクリエイターが使う技術や手法を習得し、自分の思い描いたゲームを実現するために必要な技術を身につけることができる。また、Unityを通じて多くの学びがあり、ゲーム制作に必要な様々な概念やツールも理解できるようになる。楽しく学びながら、自分自身でアイデアを形にできる力を身につける。',
  2027,
  '[{"name":"荒川 巧也","role":"客員講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'Unity Engineをベースにデジタルコンテンツ制作(2D/3Dゲームの制作からVR/ARの開発)を手法を学ぶ。基本的なプログラミング知識があることを前提にして、ゲーム制作が初めての受講者でも取り組めるレベルからはじめ、一歩ずつ難易度を上げ、自分自身でアイデアを形にできる力を培う。数理と情報技術に基づき、プロフェッショナルなゲームクリエイターが使う技術や手法を習得し、自己の思い描いたゲームを現実化するための技術を修得する。さらに、Unity Engineを通じてゲーム制作の知識にはとどまらない社会の基盤や価値観についても理解し、自分自身の倫理観を育む。',
  '制作課題提出100%',
  '前提科目
Webアプリケーション開発4
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


-- チームプログラミング演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C3-1200-015',
  'チームプログラミング演習',
  '本科目は、チーム開発を行いながら課題として設定されたWebアプリケーションを開発し、リリースすることを目的とする。各回ではチームにおいて、技術調査・企画制作、企画レビュー、設計レビューなどをしていきプロダクト開発に挑む。本科目を修了することで、チーム開発で生じる問題やその解決方法について理解できるようになる。',
  2027,
  '[{"name":"吉村 総一郎","role":"講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'アジャイルプラクティスを含むチーム開発の手法を実践することにより、相対見積もり、継続的インテグレーションやスクラム、コードレビューなどを行うチームに参画した際にそのやり方を理解してチーム開発ができるようになることを目標とする。',
  '制作課題100%',
  '前提科目
Webアプリケーション開発4、Linux概論
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


-- プロジェクトマネジメント応用
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C3-1200-016',
  'プロジェクトマネジメント応用',
  'プロジェクトマネジメント概論で学修した知識を用いて、初めて行うプロジェクトに適用し、実践を通じて学修する。演習形式で進め、プロジェクトの目標設定からニーズ把握、計画作成、スケジューリング、リスクと品質の検討、見積り、そして計画書作成までの一連のプロセスを体験する。作業の実施、進捗の確認、レビューを経て、最終的には自身が行ったプロジェクトについてプレゼンテーションを行う。これらの過程を通じて、プロジェクトマネジメントの各段階で必要な知識と技術を深め、実際の現場での応用力を鍛えることを目指す。',
  2027,
  '[{"name":"木野 泰伸","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'プロジェクトマネジメント応用を通じて、プロジェクトの目的、目標の作成、ニーズ把握、WBSの作成、スケジューリング、リスクと品質の管理、レビューと試験、プレゼンテーションなどを体験することにより、新規のプロジェクトに対してもプロジェクトとして全体像をイメージし、適切に実施していく技術を身につけることができる。また、情報表現力とコミュニケーション能力も高まり、プロジェクトを実施することによる課題解決能力を身につけることを目標とする。',
  'レポート50％、発表50％',
  '前提科目
プロジェクトマネジメント概論
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


-- Webアプリケーション開発演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C3-0034-017',
  'Webアプリケーション開発演習',
  '本授業では、最初から一つのWebアプリケーションを作り上げる流れを体験する。手始めに、各自で興味あるテーマを選び、そのテーマに基づくWebアプリの企画を行う。次にその企画を皆でレビューし、良い点と改善点を探る。その後、改善された企画に基づき、設計レビューを行い、完成形を見据えながらアプリケーションの骨組みを組み上げる。その骨組みを基にして実際の開発に移り、試行錯誤しながらアプリを完成させる。',
  2027,
  '[{"name":"津野 貴大","role":"客員講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '企画、設計、開発というアプリケーション開発の全体像を理解した上で、自身でアプリを一つ作成し、公開することを目標とする。また、周りの意見を取り入れ、改善を重ねることで、単にコードを書くだけでなく、ユーザーの立場に立ったアプリケーション開発ができるようになることも目標とする。そして、自らのアイデアを形にする楽しさと、その達成感を体験し、より深くIT分野について学ぶ。',
  '制作課題100%',
  '前提科目
Webアプリケーション開発4、Linux概論、データベース運用実践
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


-- 動画クリエイター技術演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C3-1200-018',
  '動画クリエイター技術演習',
  'Adobe Premiere ProとAfter Effectsの基本的な操作を学び、実際に動画制作を行いながら動画制作に関する基礎的な技術を学ぶ。',
  2027,
  '[{"name":"順次公開予定","role":"講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'Adobe Premiere ProとAfter Effectsの操作を習得し、それを活用して実際に動画制作を行う。自身が制作した動画を通じて、情報収集能力、表現能力、コミュニケーション能力を具体的に強化することで、動画クリエイターとしてのスキルと視点を養うことができる。これらを通じ、デジタルツールを用いた表現能力を養い、課題を解決する力とゴールを達成する力を獲得することを目標とする。',
  '制作物100％',
  '前提科目
デジタルツールの使い方
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


-- Webデザイン演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C3-1200-019',
  'Webデザイン演習',
  'Webサイト制作に必要な基礎知識や、写真加工やイラスト作成を行うグラフィックツールの使い方、ノーコードのWebサイトビルダーの使い方を学び、実際にWebサイト制作を行う。',
  2027,
  '[{"name":"小島 芳樹","role":"客員講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'Webサイト制作の基礎的な知識、グラフィックツールを使って画像加工やイラスト作成のスキルや、Webサイトビルダーを活用して複数ページのWebサイトを構築できる技術を修得する。学生はプロジェクトの企画からデザイン、サイト構築、公開までのプロセスを学び、オリジナルのサイト制作ができる技術を身につける。',
  '制作物100％',
  '前提科目
デジタルツールの使い方
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


-- デジタルイラスト演習発展
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C3-1200-020',
  'デジタルイラスト演習発展',
  'CLIP STUDIO・Photoshop・Illustratorを使ったプロのイラストレーターとして活動するためのポートフォリオ完成を目指す、それと並行して
業界就職組：ポートフォリオマッチングサービスの活用、SNS運用方法、内定者PFとの比較分析、業界ニーズへの対応方法
個人活動組：セルフプロデュースの仕方、実績の作り方、キャリアプランニング
を学ぶ。',
  2027,
  '[{"name":"濵田 順教","role":"客員講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '各業界に向けた内定のもらえるポートフォリオの完成。プロのフィードバックへの対応力の獲得、AIの有効的な活用。業界を生き抜く戦略と市場分析能力を獲得する。これらのデジタルイラストレーション技術を修得することで、デジタルツールを用いた表現能力を養い、課題を解決する力とゴールを達成する力を獲得することを目標とする。',
  '制作物100％',
  '前提科目
デジタルイラスト演習基礎
後継科目

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


-- 共創場デザイン演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C3-0034-021',
  '共創場デザイン演習',
  'パターン・ランゲージやアジャイルソフトウェア開発の歴史に触れ、Wiki、ニコニコ動画、ニコニコ学会β等のメディアの発展について学ぶ。これらの知識を活かし、共創型イノベーションや新たな活動立ち上げについて探求する。各学生は自身が取り組む活動計画を立て、中間及び最終発表を行い、アイデアを共有し、他者からのフィードバックを受ける。',
  2027,
  '[{"name":"江渡 浩一郎","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本講義では、共創場デザインに関わる歴史の理解、集合知等のメディア分析による未来像構築、活動計画立案の実践および発表スキル向上を目指す。これらを通じて、共創型イノベーション実践と広範な問題理解・解決力を養う。',
  'レポート50％、発表50％',
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


-- ゼミ（インターネットのしくみ（応用））
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C4-1234-024',
  'ゼミ（インターネットのしくみ（応用））',
  '本ゼミでは、インターネットのしくみにて学んだ基礎知識をベースにIPアドレスの宛先制御について学ぶ。インターネットの宛先制御はすべてのインターネット通信の基本をなすものであり、唯一の宛先制御プロトコルBGPとその関連するテクノロジーを学修する。またゲストを呼んで演習する回も実施する。',
  2027,
  '[{"name":"岡田 雅之","role":"教授"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'インターネットの宛先制御の仕組みを理解する。
宛先制御に関する脅威を学びその影響などについて議論ができる。',
  '確認テスト40%、確認レポート60%',
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


-- ゼミ（質的データ分析&エージェントシミュレーション）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C4-1234-025',
  'ゼミ（質的データ分析&エージェントシミュレーション）',
  '本ゼミでは、質的データ分析とエージェントシミュレーションについて実践を通じて学修する。ただし、本ゼミの目的は、質的データ分析およびエージェントシミュレーションを使えるようになることではなく、そのことを通じて、人間は、どのように社会や世界を見て、社会を認識しているのか、また、この宇宙はどのような構造で成り立っているのかを理解していくことにある。私たちが生活しているこの宇宙、そして、人間の認識について理解が進むと、様々な仕事に応用できるようになる。また、イノベーションを創出したり、新製品の開発などにも役立つ。
具体的には、前半では、インタビューやインターネット上にある文章（質的データ）をもとに、そこで語られている概念を抽出し、モデル図を作成する方法について学修する。後半では、シンプルなルールが、世の中の複雑な現象を生成している様子をシミュレーションを通じて確認する。',
  2027,
  '[{"name":"木野 泰伸","role":"教授"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '本ゼミを通じて、質的データ分析、エージェントシミュレーションの仕組みを理解し、実施できることを目標の一つとしている。なお、学会発表ができる水準を目指す。また、質的データ分析、エージェントシミュレーションを通じた、人間の認識の特徴、社会、宇宙の構造についての概略的な理解の獲得を目標としている。',
  'レポート50％、発表50％',
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


-- ゼミ（情報セキュリティ）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C4-1234-026',
  'ゼミ（情報セキュリティ）',
  '情報セキュリティに関連したテーマを受講者に設定させ、受講者が自ら調査・研究・発表することで、主体的な学修・考察・コミュニケーションを行う力を養う。テーマは情報セキュリティに関連する広いテーマとし、技術的なテーマのみならず、文化・社会・法律・歴史などのテーマも可能とする。',
  2027,
  '[{"name":"順次公開予定","role":"講師"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '情報セキュリティに関連し、自らが興味のあるテーマについて、調査し、整理して理解し、それを説明できるようになる。説明において、スライド等の資料を作成して視覚的・直観的な説明ができるようになるとともに、文章により順を追って論理的に、わかりやすさに配慮した説明ができるようになる。',
  'プレゼンテーション50%、提出物（報告書）50%',
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


-- ゼミ（AIデータサイエンス価値創造ゼミⅠ）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C4-1234-027',
  'ゼミ（AIデータサイエンス価値創造ゼミⅠ）',
  'このゼミでは、最新の深層学習に関する文献調査によって最新の研究動向を把握し、各人が実際に深層学習に関する研究プロジェクトを遂行する。ゼミの前半では各人で興味があるトピック・テーマをもとに複数の論文を選択し、各週で担当に割り当てられた学生がその内容について包括的に発表する。後半では、自身が調査したトピックにおける研究テーマを設定し、実際に研究を行う。ゼミでは毎週その進捗報告を行い、担当教員からコメントや質疑応答をもらい、作業に反映させながら研究を進めていく。最終回では各人が行なってきた研究について発表を行う。',
  2027,
  '[{"name":"河野 慎","role":"講師（予定）"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '本ゼミでは、下記の能力を身につけることを目指す。
- 最新の深層学習の動向について把握する能力
- 複数の文献調査によるそのトピックに関する課題などを捉える能力
- 研究プロジェクトを通して問題発見・問題解決する能力
- プレゼンテーション能力',
  '輪読の発表20%・研究プロジェクト30%・最終発表50%',
  '前提科目
ディープラーニング1,ディープラーニング2,ディープラーニング3
後継科目
なし

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


-- ゼミ（AIデータサイエンス価値創造ゼミⅡ）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-3-C4-1234-028',
  'ゼミ（AIデータサイエンス価値創造ゼミⅡ）',
  '数学発展の歴史を辿り、社会にデータサイエンス・AIなど数理が深く入り込んでいる現状に照らし、ロジカルシンキングなど昨今さまざまな思考方法に耳目が集まっているなかで『数学的思考法』という思考パターンを定義付け、どのように物事を捉え深掘りしていくかの方法論を学ぶ。数学の歴史からその発祥のありさま、発展の状況、具体的なアウトプットの広がりに至る迄、多面的に学ぶ。ビジネスでのデータ解析事例を学ぶことで、具体的な考え方のコツを掴み、他の思考方法との類似点・相違点を考察することで、受講生が縦横に使いこなせる思考法として修得できるようにする。',
  2027,
  '[{"name":"千葉 尚志","role":"准教授"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '『数学的思考法』の本質を理解し、日常のあらゆる課題解決において当該思考法・フレームワークで捉え熟慮する姿勢を学ぶ。日々のビジネスの課題解決でこの思考法がどんな益をもたらしているか、アウトプットの視点からも深く理解する。特にデータ解析で具体的なビジネス課題解決を目指す際、『数学的思考法』によって課題解決の本質の深い理解と、解決の方向性の気付きを得ることを事例から学ぶ。
- 自力で専門書を読みこなす能力の獲得
- 市井のビジネスに於ける数理解析の応用の先端実例の知識を獲得すること
- 自分が読んだ内容を発表し批判を受けることで、論理的な説明やコミュニケーションの方法を学ぶ
ゼミは学修の集大成であり、自己の興味を持ったテーマに基づいて積極的に取り組むことが重要である。',
  'グループワーク70%、レポート30%',
  '前提科目
なし
後継科目
なし

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


-- 環論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C3-0034-009',
  '環論',
  '本格的な抽象代数学の基礎科目として、整数全体や多項式全体などのような足し算＋と掛け算・の2つの演算がある代数系である「環」について学ぶ科目である。イデアル論や素元分解の一意性など、環論（特に可換環論）の初歩的事実について系統的に修得することを目的とする。本科目は演習科目に位置付けられ、学生の積極的な参加、問題演習への取り組みが求められる。',
  2027,
  '[{"name":"加藤 文元","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '● 環の概念について理解し、整数や多項式全体の一般化であることを体得する。
● イデアルの概念について理解し、その計算方法を体得する。
● 環上の加群について理解する。',
  'レポート70％ , グループワーク30％',
  '前提科目
群論
後継科目
ガロア理論

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


-- 組合せ論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C3-1200-010',
  '組合せ論',
  '組合せ論とは有限集合に入る構造の研究である。有限的な対象は考察すべき可能性が有限通りに限られるため一見扱い易そうに感じられるが、独特な難しさや奥深さを持っている。近年は応用的な側面でも組合せ論の考え方の重要性は増している。この授業では組合せ論の基本概念や良く使われる手法について出来るだけ系統的に紹介したい。
本科目は演習科目に位置付けられ、学生の積極的な参加、問題演習への取り組みが求められる。',
  2027,
  '[{"name":"前野 俊昭","role":"客員教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'この講義では、順列、順序構造、有限幾何、グラフ、マトロイドなどの代表的な組合せ構造に親しみ、それらを研究するための基本的なテクニックを習得することを目標とする。',
  'レポート100％',
  '前提科目
初等代数概論、線形代数2、集合と論理、数理構造の発見と活用、グラフ理論
後継科目
ガロア理論、ゼミ（数理科学特論ゼミⅠ）、ゼミ（数理科学特論ゼミⅡ）、ゼミ（数理科学特論ゼミⅢ）、ゼミ（数理科学特論ゼミⅣ）

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


-- トポロジー
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C3-0034-011',
  'トポロジー',
  'トポロジー（位相幾何学）は連続変形の下で変化しない図形の性質を研究する幾何学である。トポロジーの考え方は定量的性質よりも定性的性質に注目する点で、現代数学における極めて重要な考え方を提供している。この授業ではトポロジーを学ぶために必要な基本的概念を紹介し、位相不変量の初歩として基本群とホモロジー群の計算方法を扱う。
本科目は演習科目に位置付けられ、学生の積極的な参加、問題演習への取り組みが求められる。',
  2027,
  '[{"name":"前野 俊昭","role":"客員教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'トポロジーの基本的研究対象となる位相空間、複体、連続写像、位相不変量等の概念を理解する。簡単な場合に基本群やホモロジー群の計算方法を習得する。ホモロジー群の考え方の応用として、Brouwerの不動点定理を理解する。',
  'レポート100％',
  '前提科目
線形代数2、解析学2、集合と論理、数理構造の発見と活用、位相空間、群論
後継科目
ゼミ（数理科学特論ゼミⅠ）,ゼミ（数理科学特論ゼミⅡ）,ゼミ（数理科学特論ゼミⅢ）,ゼミ（数理科学特論ゼミⅣ）

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


-- 積分と測度
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C3-1200-012',
  '積分と測度',
  '古代の測量術に始まり、微分とともに近代科学の基盤となった積分の概念は、数多くの数学者の努力を経て厳密かつ実用的なものとなった。本授業においては、積分を「線型汎関数」として捉える立場から、確率論や統計学を始めとする数多くの学問領域において重要な「ルベーグ積分」や「測度」の理論を学んでいく。その過程で、量子論の基礎数理とも関係し近年では機械学習等の応用においても存在感を増す「関数解析」の考え方にも親しんでいく。
本科目は演習科目に位置付けられ、学生の積極的な参加、問題演習への取り組みが求められる。',
  2027,
  '[{"name":"西郷 甲矢人","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '「総和」の概念についての明晰な理解に基づき、積分論の考え方の骨格を身につける。具体的には、連続関数の積分からダニエル積分に至る道筋を微積分の基礎事項を知る人に説明できるようになり、積分と測度の関係を正確に述べることができるようになり、積分論の諸定理をその前提を明確にして活用できるようになる。',
  'レポート70％ , グループワーク30％',
  '前提科目
解析学3, 線形代数2, 位相空間
後継科目
ゼミ（数理科学特論ゼミⅠ）,ゼミ（数理科学特論ゼミⅡ）,ゼミ（数理科学特論ゼミⅢ）,ゼミ（数理科学特論ゼミⅣ）

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


-- Inter-universal Teichmüller Theory 4（宇宙際タイヒミューラー理論 4）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C3-1200-013',
  'Inter-universal Teichmüller Theory 4（宇宙際タイヒミューラー理論 4）',
  ' [FROM CLASS FIELD THEORY OF ANABELIAN GEOMETRY AND IUT]
This most advanced part of IUT courses, IUT4 will present areas of modern number theory related and used in the IUT theory, they include some of class field theory, anabelian geometry, and IUT.       

(日本語)
[遠アーベル幾何とIUTの類対論]
IUTコースの最も進んだ部分であるIUT4（本授業）では、IUT理論に関連し、使用されている現代の数論の分野を紹介する。それらには、類体論、遠アーベル幾何学、およびIUTが含まれている。
（なお、この授業は英語で開講する。）',
  2027,
  '[{"name":"Ivan Fesenko","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'IUT 4 uses all of the previous parts IUT1-IUT3 and goes much further, towards anabelian geometry and IUT. The theories will be presented at the level of some of their main ideas, concepts and objects, to enable further self-study of the IUT theory. 

(日本語)
IUT4（本授業）では、IUT1-IUT3で学修した内容を全て用い、遠アーベル幾何学とIUTに向けた学修を進める。
本授業で学修する理論は、主要となる考え、概念、対象のレベルで紹介され、IUT理論の更なる自己学修が可能となる。',
  'Report70% , Group Work30%',
  '前提科目
Inter-universal Teichmüller Theory 1（宇宙際タイヒミューラー理論 1） ,Inter-universal Teichmüller Theory 2（宇宙際タイヒミューラー理論 2）, Inter-universal Teichmüller Theory 3（宇宙際タイヒミューラー理論 3）
後継科目
Nothing

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


-- 量子コンピュータ演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C3-0034-014',
  '量子コンピュータ演習',
  'スパコンより桁違いに高速な計算が実行できる可能性を秘めた量子コンピュータ。この動作原理、アルゴリズム、そしてプログラミング手法を取り上げる。座学と実践を組み合わせた本授業を通して、量子プログラムを設計、実装、実行する能力を養う。本授業は線形代数の知識が前提となり、量子物理学の知識は（あれば理解の助けになるが）必要としない。基本事項を座学で講義した後、実際にいくつかのアルゴリズムの実装実習を通じて、量子プログラムを読み解き、実装する能力を高める。',
  2027,
  '[{"name":"池田 達彦","role":"准教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '量子コンピュータと古典コンピュータの違いを説明できる。量子コンピュータの基本構成要素と動作原理について説明できる。量子コンピュータが高速と言われる所以を説明できる。量子プログラムを実装し、量子シミュレータおよび量子コンピュータ実機において実行し、実行結果を解析することができる。',
  'グループワーク60％ , レポート40％',
  '前提科目
線形代数1 
後継科目
ゼミ（量子科学技術）

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


-- Wolfram言語で学ぶ科学計算
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-3-C3-1200-015',
  'Wolfram言語で学ぶ科学計算',
  'この授業はWolfram言語を使って科学計算を学ぶもので、数字と数式の計算、計算結果の視覚化、シミュレーション、グラフィックス、自由研究・発表などが扱われる。Wolfram言語は数学に特化した言語であり、学生はアカウントの取得方法のような基礎から学修することができる。',
  2027,
  '[{"name":"竹内 薫","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'Wolfram言語を使ってみるところから始めて、簡単な計算ができるようになり、最終的にはファインマン図の評価や一般相対性理論の曲率の計算といった、高度な計算技術まで到達してもらいたい。ただし、数学に苦手な学生が、高校数学内容をWolfram言語を通じて「操作」「ビジュアル」によって理解する、といった到達点でも充分、評価に値する。最終的に、各人の嗜好やニーズや経験に合わせて、Wolfram言語の理解を深めてもらいたい。',
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


-- 芸術と文化資本Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C3-1200-003',
  '芸術と文化資本Ⅱ',
  'アートとアートマネジメント、それらを支える文化資本との関係について検証していく。アート作品（映画など商業コンテンツを含む）も市場で取り引きされる動産の一種なので、取り引きの活性化のために絶え間ない投資が必要となる。そして、投資額が大きい程、市場規模が大きくなることも他の動産取り引きと変わりない。美術館やアートフェアも、美術作品の価値を高めるための装置であることを知る。',
  2027,
  '[{"name":"岩渕 潤子","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '日本では「アートが好きだと本気で考える金持ちなどいるわけがない」と主張する学生が多い。日本では映画などでも金持ちのキャラクターが否定的に描かれることが多いのは何故なのか？　文化資本の支え手として、社会には富裕層に期待されている役割があるということを肯定的に考える方法を身につける。',
  'レポート・成果物100%   （中間レポート（40%）・最終レポート(60%)）',
  '前提科目
芸術と文化資本Ⅰ
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


-- 日本文学Ⅲ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C3-1200-004',
  '日本文学Ⅲ',
  '急速にグローバル化が進む現代社会の中で活躍するために、国境を越えた国々、文化、世界観についての知識が不可欠である。本授業では、海外で読まれた具体的な日本文学作品を取り上げ、比較考察の方法を通して、文化の流通と変容の詳細な過程について考えたい。',
  2027,
  '[{"name":"Pradhan Gouranga Charan","role":"講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '本授業では、日本文学は海外でいかに受容され、どのように評価されてきたのかについて知識を得ながら、日本文学の代表的な作品について知識を得ることができる。なお、文化生成の過程について理解することができ、文学作品や評論の読解力が身につき、思考力、表現力も育成することができる。',
  'レポート・成果物30%、グループ発表35％・グループワーク内での発言35％',
  '前提科目
日本文学Ⅰ、日本文学Ⅱ
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


-- 文化人類学Ⅲ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C3-0034-005',
  '文化人類学Ⅲ',
  'ファン文化と参加型文化の研究は、趣味との関わり、人との関わり、そしてこれを可能にする情報技術とコミュニケーションの研究である。本授業においては、コスプレ、同人活動やボーカロイドなどから例を取り上げて、特にインターネット空間におけるファン活動、コミュニティ作りやネットワーク作りなどに焦点を当てる。グループワークで関心のあるファン文化を考察し、ファン文化研究と参加型文化の基礎を身につける。',
  2027,
  '[{"name":"Hernández Álvaro David","role":"講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本授業では、以下の能力の修得を目指す。①インターネット空間における活動、コミュニティやネットワークを考察する能力。②人文科学の視点と情報技術の視点を持って、ネットにおける「つながり」の現状とこれからの可能性を考える能力。',
  '試験35%、発表・発言35%、グループワーク30%',
  '前提科目
文化人類学Ⅰ、文化人類学Ⅱ
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


-- AI時代の科学と哲学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C3-0034-006',
  'AI時代の科学と哲学',
  '深層学習に代表されるAI技術は、我々の日常や社会生活だけでなく、今後の科学のあり方をも大きく変えていくことが予想される。本授業では、近代科学の根底にある「合理的で、客観的で、万人にとって有用である」という理念の成り立ちを確認した上で、来るべきAI駆動科学が従来のこうした科学観にどのような影響を与えていくか、ということを考える。',
  2027,
  '[{"name":"大塚 淳","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '合理性、客観性、公共性という理念が、現代我々が「科学」と呼ぶものの成立にどのように関わってきたのかを理解する。また現代において、AIがどのように科学に応用されているのかを知り、そうした融合が今後の科学のあり方にどのような影響を及ぼすかを、グループワークやディスカッション等を通じ主体的に考えることができるようになる。',
  'レポート70%、グループワーク30%',
  '前提科目
科学哲学、統計学を哲学する
後継科目
ゼミ（数理哲学）

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


-- フィールドワークで学ぶ宗教思想史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C3-0034-007',
  'フィールドワークで学ぶ宗教思想史',
  '本科目では、縄文時代の信仰と天文学について学修する。狩猟・採集に依存していた人々は、四季の変化に応じて食糧を確保する必要があり、太陽や星の観測は極めて重要だった。その痕跡は、全国の遺跡や神社の位置に隠されている。受講者はフィールドワークを通じて、日本人の自然との関わりと、信仰の起源について考察を深めることを目的とする。',
  2027,
  '[{"name":"茂木 誠","role":"客員講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '考古学・歴史学と、天文学・地球物理学との境界を超えた新しい知の可能性に挑み、地元の遺跡・神社というローカルなテーマを手掛かりに、人類の叡智の普遍性を探る。',
  'ミニレポート、グループワークへの参加、総合レポートにそれぞれ加点。',
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


-- ゼミ（心の科学）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C4-1234-008',
  'ゼミ（心の科学）',
  '前提科目である心理学実験・調査演習で学んだ心の科学の研究方法を踏まえ、与えられた実験・調査材料を使ってそれらを実施するだけでなく、自分たちで実験や調査を構築し、研究上の問いに答えを導くプロセスを体験することを目標とする。そのため、研究内容の決定、それを実施するための資料作成とプログラミングなどの準備を主体的に行なってもらう。構築された実験・調査を実施し、データを収集し、得られたデータから問いへの答えをプレゼンテーションとレポートにまとめる。',
  2027,
  '[{"name":"積山 薫","role":"教授"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  'この授業を通して、研究者が心理学的知見を科学的に得るために築いてきた先人の研究の営みを理解できるようになる。また、自分でもそのような営みの１つに創造的に参加することにより、研究上の「問い」を立てる力、それに答えを出す力を身につけることができる。実験や調査を実施する上でのプログラミングなどを行うことにより、IT技術を身につけることができる。グループ討議を通して、論理的な思考やコミュニケーション能力を身につけることができる。',
  'レポート・成果物50%、発表・発言50％（中間発表25％／最終発表25％）',
  '前提科目
心理学実験・調査演習
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


-- ゼミ（物語創作と物語の構造分析）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C4-1234-009',
  'ゼミ（物語創作と物語の構造分析）',
  '神話学・民俗学・心理学・ハリウッド映画のシナリオ論等の「物語論」を踏まえ前半１５回は「構造」からプロットを演繹的に制作、後半は任意の作品から帰納的に物語構造を分析する。毎回、制作あるいは分析の手法を実際に示し、課題とし、次回に提出された課題を受講生とともに講評・討議していく。また創作・分析に生成AIの進化に応じどこまで援用可能か必要に応じ関連する専門家の講評・討議への参加を仰ぐ。',
  2027,
  '[{"name":"順次公開予定","role":"講師"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '「物語の構造」を反復によって創作及び分析の双方で援用できる「物語の文法」を実装し、生成AI等を使いこなせる基礎を身につけるとともに物語を内在する言説への批評的能力を身につける。「物語」について「論じる」のでなく、創作やコンテンツ産業の現場で技術・方法として使いこなす応用力を身につける。',
  '提出課題と討議での物語構造の援用力を評価する。レポート・成果物50%、グループディスカッション内での発言50％',
  '前提科目
リテラシーと応⽤のための物語理論
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


-- ゼミ（トークイベントをつくる）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-3-C4-1234-010',
  'ゼミ（トークイベントをつくる）',
  'ソクラテスは哲学は産婆術に似ていると述べた。人々がアイデアを生み出すのを助ける術だという意味である。
本ゼミでは、グループワークを通して、そのような意味での哲学の場、すなわち「人々がアイデアを生み出すのを助ける場」の創出方法を実践的に学ぶ。講師は東京で2013年より「ゲンロンカフェ」というイベントスペースを経営している。その経験を活かし、企画力・交渉力・司会力など多面的な観点から、トークイベントの制作方法を伝授する。最後には実際に学生主体で「公開のトークショー」を企画運営してもらい、最終成果とする。',
  2027,
  '[{"name":"東 浩紀","role":"教授"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '本授業を通じて、学生は、さまざまな領域の専門家を呼んだトークイベントの展開を想定することで、現代世界についての総合的な理解を手に入れることができる。また、学問やビジネスで重視される領域横断的なコミュニケーション力を手に入れることができる。',
  '発表・発言80%、グループワーク20%',
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


-- スマート田舎のススメ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-3-C3-0034-003',
  'スマート田舎のススメ',
  '都会とデジタルネットワークで繋がりながら地方で暮らすライフスタイル（スマート田舎）に関心を持つ学生を対象に、半農半X、農業6次産業化、地方型スマートシティなどの事例を踏まえて地域の課題を理解し、解決の方法について学生自身がグループワークを通じて地域の未来像を描き、発表する機会を設けます。
',
  2027,
  '[{"name":"橋本 剛","role":"客員講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '素材（課題）に満ちたフロンティアである地方の農村における実際の課題解決について、情報通信網など社会変化を取り入れたかたちで考察することにより、自ら地域の課題を発見し、解決する能力を身につけることを目指します。',
  '順次公開予定',
  '前提科目

後継科目

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


-- 課題解決と改革のリーダーシップ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-3-C3-0034-004',
  '課題解決と改革のリーダーシップ',
  '本科目では企業や学校、都市や地域などの様々な組織、そして社会や国家が直面する課題を理解し解決するための洞察力を養うとともに、課題解決の方法論を学ぶ。具体的には、事例を手がかりに課題の原因や構造の理解、組織が持つ資産（人材、資金）、外部環境の理解を深めていく。様々な事例をもとに特に課題の掘り下げ方について議論をする。',
  2027,
  '[{"name":"上山 信一","role":"教授(副学長)"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '身近な組織の改革の事例から始め、次第に大きな改革（企業改革、社会運動等）の事例を学ぶことで、社会における多様な対立する視点や根本的な課題の存在を理解する。その上で、自らが関わる組織における課題をどう分析し、解決策を見出し、他のメンバーと協力しながら未来像を打ち立てるためのスキルとマインドセットを身につける。',
  'レポート・成果物70%、発表・発言30%（授業で提示するケースに関する発表　前半、後半各15%）',
  '前提科目
企業経営
後継科目
なし
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


-- 民主主義論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-3-C3-0034-005',
  '民主主義論',
  '日本は多元的な代表民主主義あるいは自由民主主義および議院内閣制という政治体制をとっています。日本の政治過程は毎年の国会審議や首相官邸と各省庁の政策過程というループもしくはサイクルとして回っているわけです。皆さんにとっては将来的に、この政治のループに何らかの形で関わる能力が大事になります。本授業では「社会に関わる能力」の一環として政治的な実践力を捉え、この観点から日本の政治制度に焦点を当て、関連する政治学、政治哲学、政策決定過程、行財政について説明します。ここでいう政治とは、政府や地方自治体など公的機関（public sector）に関連した活動全般を指しています。現在の政治は、市場経済における企業の活動やインターネット上での市民の活動と密接に結び付いて社会全体の相互作用を作り出しています。このような民主主義のプロセスや政治決定が、どのような形でわれわれの社会生活に結び付いているのか、この授業では具体例を交えて検討します。',
  2027,
  '[{"name":"山内 康英","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'この授業の目標は「社会に関わる能力」の一環として政治的な実践力を考えることです。このためには、①規範的な政治理論（normative political theory）と、②経験論的な政治学（empirical political science）の双方を理解する必要があります。この授業を、政権や政府が日本ではどのように動いているのか、具体的な政策形成に関わるとすればどのような切り口があるのかを理解する一助にしてください。これとは別に皆さんが国政選挙の投票に行った結果として内閣と政権が成立します。高校で学修した倫理社会や政治経済の総まとめになりますので頑張って受講してください。',
  'レポート・成果物50%、発表・発言50％',
  '前提科目
情報社会論、情報社会の総合安全保障
後継科目
国際関係論、戦後日本史1、戦後日本史2、ゼミ（情報社会の政治学）

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


-- ゼミ（多様化する家族）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-3-C4-1234-006',
  'ゼミ（多様化する家族）',
  '家族とは何か――これは当たり前のようでとても難しい問題である。「婚姻」と「血縁」により親子を決定するというわが国の伝統的な理論のほか、わが国に先立って社会の変化に直面したアメリカを題材に、親となる「意思」で親子を決定するという生殖補助医療法制や、親として「機能」している者を親と認定する理論を検討し、そこに普遍的な親子の要件を探すことを目的とする。ステップファミリー、シングルピアレントや同性カップルによる子育てを含む、多様な家族の形について扱う。',
  2027,
  '[{"name":"山口 真由","role":"教授"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '「多様性」が称賛される現在、家族のあり方や親子のあり方は大きく変わろうとしている。そういう現状を正確に理解しつつ、伝統的な理論と新しい理論との対立を明確にするのみならず、さらに深く洞察して、そこに共通の要素、すなわち、社会が変わっても変わらない普遍を見出す力を目指す。',
  '発表・発言：100％（前期中間発表20%、前期最終発表30%、後期中間発表20%、後期中間発表30%）',
  '前提科目
法学Ⅰ、法学Ⅱ
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


-- ゼミ（情報社会の政治学）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-3-C4-1234-007',
  'ゼミ（情報社会の政治学）',
  'このゼミは「情報社会論」「情報社会と総合安全保障」「民主主義論」「国際関係論」の履修者で、政治や行政の実務、外交･安全保障や軍事の歴史と動向、現在の政治状況や情報社会の調査研究に関心を持つ学生の皆さんを主な対象とします。現在の全般的な政治状況は情報通信技術の進歩と相まってVUCA（Volatility（変動性）、Uncertainty（不確実性）、Complexity（複雑性）、Ambiguity（曖昧性））という以外ありません。複雑な変化のなかにパターンを見出しタイムリーに適切な判断を行う方法論を習うには修羅場を経験した実務家の経験を聞くのがいちばんです。このゼミは鈴木寛先生（元文部科学副大臣・前文部科学大臣補佐官、本学チェアマン）と髙見澤將林先生（元内閣官房副長官補／事態対処・危機管理担当、元ジュネーブ軍縮大使）に分担をお願いしています。年間30回のゼミを以下の3部構成とします。Ⅰ. 情報社会学と社会システム論、Ⅱ. 国際関係論と総合安全保障、Ⅲ. 民主主義の諸理論と組織のガバナンス。各部を講義と基礎論文の購読に分けて、受講生の皆さんと議論しながら授業を進めるものとします。',
  2027,
  '[{"name":"山内 康英","role":"教授"},{"name":"順次公開予定","role":"講師"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '政治学すなわち公共部門のアドミニストレーションあるいはより広義に考えて組織のガバナンス全般に関する研究には（ⅰ）経験論的な説明つまり実務に関するものと（ⅱ）規範的な問いつまり理論もしくは理念に関するものの区別があって、両者は不可分であるが、同時に後者は前者に、また前者は後者に還元できない、ということになっています。複雑な変化のなかにパターンを見出しタイムリーに適切な判断を行うためには、多様なものの考え方を用いて分析し、批判的に検討し、未来像を打ち立てる力が必要になります。このゼミを現在のVUCA状況にある知能情報社会の政治的な活動全般に関する規範的な理論と実務的な知識を涵養する一助として下さい。このゼミでは、基本的なアカデミック・スキルやデジタルツールを用いた情報収集能力、調査研究に必要な表現能力、ビジネスや行政に対するコミュニケーション能力について解説します。これによって具体的な社会課題に対して何らかの組織的なソリューションを提案するというのが、このゼミのゴールとなる到達目標です。',
  'レポート・成果物50%、発表・発言50％',
  '前提科目
情報社会の総合安全保障、情報社会論、国際関係論、民主主義論
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


-- マクロ経済分析演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-3-C3-0034-001',
  'マクロ経済分析演習',
  '経済学の基本的概念を理解した上で、国の景気の測り方や経済発展の測定方法について学び、現実のデータをどのように利用するのかを考える。さらに、経済全体の動きを把握する能力を身につけることを目指す。また、実際の経済データを用いた分析方法を学び、その結果に基づいてプレゼンテーションを行い、解釈についての討論を行なう。',
  2027,
  '[{"name":"市橋 勝","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '実際の経済データを用いた分析を通じて、批判的な精神と多様な視点を身につけることが目標となる。経済データの解釈には様々な側面があり、それらを慎重に検討することで経済の複雑さに対処できる。また、異なる視点から経済現象を見ることで、より包括的な理解が可能となる。これにより、学修者は経済の根本的な問題を洞察し、新たな問題解決能力を養うことができる。',
  'レポート・成果物50％、グループワーク50％',
  '前提科目
マクロ経済学
後継科目
ゼミ（経済発展を考える）

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


-- 課題解決のための計量経済分析
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-3-C3-0034-002',
  '課題解決のための計量経済分析',
  '科学的証拠に基づいた政策立案（EBPM）の基礎的な知識と技法を教える。具体的には、多様な施策の介入効果を正しく評価するための因果推論の考え方を理解し、統計分析ソフトRと模擬データセットを実践的に用いる新しい計量経済学の基礎的手法を演習する。また、効果の検証結果を他人に伝える際のデータビジュアライゼーションの基礎的手法も併せて紹介する。',
  2027,
  '[{"name":"順次公開予定","role":"講師"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'ビジネスや政策の現場における施策の「正しい効果の検証」方法について、それが具体的に何なのか、またそれをどうやって行ったのかを理解できるようになる。また、与えられたデータからどこまで「正しい効果の検証」ができるかについても思索し、「正しい効果の検証」を行うための環境作りのために必要なもの、要点についても演習を通じて検討できるようになる。',
  'レポート・成果物（60％）、グループワーク（40％）',
  '前提科目
R言語プログラミング、経済入門
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


-- 事例から学ぶ統計学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-3-C3-1200-003',
  '事例から学ぶ統計学',
  '経済や経営で使われる統計学の基礎知識やさまざまな統計手法を理解するために不可欠となる理論とその応用について、「基礎編」と「実践編」の二段階に分け指導する。演習では、日常生活において観測できる興味深く具体的なデータを豊富に活用し、統計学の基礎と実践を結びつける訓練を行う。「基礎編」では記述統計、確率と統計の関係などを扱い、「実践編」では確率モデル、時系列データと時系列グラフなどを扱う。',
  2027,
  '[{"name":"渡邉 聡","role":"教授(学部長)(副学長)"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '多様なデータの統計的分析を通じて、社会における現象の傾向やパターンを発見するスキルを身につけ、客観的なデータ評価や仮説構築、意味の解読に取り組むことで思索力を向上させることを目指す。このような数理的理解は、社会や経済の課題への深い理解と、問題解決のための有益な提案を生む力につながり、学生は将来の課題に真摯に取り組むスキルとマインドの両方を強化することができる。',
  'レポート・成果物20%、グループワーク80%',
  '前提科目
経済入門
後継科目
ゼミ（計量経済）

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


-- 財務分析演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-3-C3-1200-004',
  '財務分析演習',
  'いずれは経営者になりたい人、就職先として銀行・証券会社・投資銀行のような金融機関においてアドバイザリー業務に携わったり、コンサルタント・会計士・税理士として企業にアドバイスする専門家になりたい人に財務分析の方法と財務経営の施策の企画方法について教える。財務分析演習では表計算ソフトを使用し、グループによる分析を指導する。',
  2027,
  '[{"name":"村藤 功","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '参加学生はグループが選択した特定上場企業の有価証券報告書などの財務情報をデジタルツールを用いて収集し、表計算ソフトで財務諸表にデータを入力して財務分析を行う方法を学ぶ。財務分析の結果特定された主要問題について事業ポートフォリオの最適化や資本構成の最適化の手法を使った問題を解決する施策の選択肢や施策の効果について検討し、発表、議論できるようになる。',
  'レポート・成果物50%、発表・発言50％(財務分析25％、施策の選択肢25％）',
  '前提科目
企業経営とファイナンス
後継科目
ゼミ（幸福曲線）
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


-- 企業価値創造とM＆A
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-3-C3-0034-005',
  '企業価値創造とM＆A',
  '企業は経営環境の変化に合わせて最適化しなければ生き延びられない。本科目では、企業の最適化のためのＭ＆Ａを使った事業ポートフォリオの最適化や資本構成の最適化について事例の検証を行う。特に、古くからの事業譲渡、合併に加えて、最近導入された株式交換・株式移転や会社分割制度について演習を通じて具体的な理解を養う。日本でもＭＢＯ，ＬＢＯや敵対的買収が起き始めている。資本構成としては、株式公開、債務の株式化の基本を理解してもらう。',
  2027,
  '[{"name":"村藤 功","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本科目では、まず企業価値評価、連結事業部経営、業績評価基準の設定などの財務経営の基本的な考え方について学ぶ。次に、事業売却、合併、株式交換・株式移転、会社分割、証券化、LBO/MBOや敵対的買収などの多様な事業ポートフォリオの最適化施策の選択肢について理解する。その後、新株公開、債務の株式化などの資本構成の最適化の選択肢を理解し、多様な方法を用いて分析し批判的に検討した上で未来像を打ち立てる方法を模索することができるようになる。',
  'グループワーク100%（財務経営20％、事業ポートフォリオ最適化40％、資本構成の最適化20％、金融機関と政府の最適化20％）',
  '前提科目
企業経営とファイナンス
後継科目
ゼミ（幸福曲線）
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


-- 交渉・合意形成演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-3-C3-0034-006',
  '交渉・合意形成演習',
  '「交渉・合意形成概論」の科目で、交渉において戦略的に思考するための基礎知識は提供した。しかし、交渉は実践で使えなければ意味がない。本演習では、交渉のケースを用いて、実際に学生同士（あるいは家族・友人と）交渉をしてもらい、そのプロセスを全員で共有し、さらに議論することで実践的交渉力の向上を図る。',
  2027,
  '[{"name":"印南 一路","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '交渉と合意形成における理論と戦略の実践演習として、交渉の具体的な事例を通して、返報原則、依存関係など交渉に働く基本的な概念を分野横断的に理解し、デジタルツールを用いて必要な情報を収集し、交渉の準備を戦略的に行えるようになるとともに、コミュニケーション能力を磨くことによって、目的に沿った交渉が実際に展開できるようになる。',
  '個人ベースでの最終レポートについての評価が70％、インターアクティブな授業中の講師の質問に対する発言が30％',
  '前提科目
意思決定の能力開発、交渉・合意形成概論
後継科目
ゼミ（意思決定研究と実践）
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


-- ゼミ（地域づくり新事業ワークショップ）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-3-C4-1234-007',
  'ゼミ（地域づくり新事業ワークショップ）',
  '最終成果は、地域における課題解決につながる現実性と事業性を両立できるアイデアを作成し、発表することである。文献の輪読と事例のディスカッションを起点に進めるが、最終的には自身のアイデアを授業の中で発表する。考えを深め、その考えを語りかける演習を通じて、地域の多様な人や組織と対話や提案できるようになることを目指す。実践知を育成するためにさまざまな事例を取り上げ、「事例探究」、「グループディスカッション」、「発表と質疑応答」というケースメソッドを用いる。自身の地域事業のアイデアを考えるワークショップを行う。理解を多面的に深めるために、実践者をゲストスピーカーとして適宜招く。',
  2027,
  '[{"name":"中村 圭子","role":"講師"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '自らが地域における効果的な事業アイデアを言語化し、地域の人や組織に提案できるようになる力をつけることを目指す。そのために、地域課題を発見し解決に導く力、協働する力、地域の暮らしを豊かにする視点を持ち、対話によって地域の価値創造に関わることを目指す。',
  'レポート・成果物40％、発表・発言40％。グループワーク20％',
  '前提科目
なし
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


-- ゼミ（文化資源アーカイブとメタバース）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-3-C4-1234-002',
  'ゼミ（文化資源アーカイブとメタバース）',
  '本ゼミでは、日本の表現文化（浮世絵からマリオまで）資源を対象としたアーカイブの歴史と現状に加えて、それらを社会的に活用するための新しい仮想環境として注目を集めているメタバースの動向について取り上げる。まず、表現文化資源に関わるデータベース／アーカイブ／メタバース（DAM）の実践事例について学んだ上で、新規のDAMを企画して構築する能力、また既存のDAMを活用した社会的サービスを練り上げて、実装していく能力を養う。',
  2027,
  '[{"name":"細井 浩一","role":"教授"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '日本の表現文化資源に関わるDAMの歴史と現状、将来性を説明することができると同時に、情報技術を駆使して、それらを企画立案して社会的に実装することができる能力を身につける。そのための基礎力として、文化資源を対象とするデータベースの作成、デジタルアーカイブの構築、各種メタバースの特性と有効性を理解して実装する能力を身につける。',
  'レポート・成果物50%、発表・発言50%（構想発表10%、中間発表20%、 最終発表20%）',
  '前提科目
文化資源とメタバース
後継科目
なし

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


-- ゼミ（アニメ作品の分析メソッド）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-3-C4-1234-003',
  'ゼミ（アニメ作品の分析メソッド）',
  'アニメ作品を客観的に分析するメソッドを教える。「面白い・つまらない」などの主観ではなく、科学的に論証可能な方法を提示し、他のコンテンツにも応用可能な考え方を触発させる。スタイルは演習方式。学生は教員の指定するアニメ作品（歴史上、普遍的な価値のあるタイトル）を予習として鑑賞する（映画を中心とする）。1コマを解説と質疑に分け、活発な議論から作品の価値や時代背景を伝えるとともに、高い思考力を鍛える。',
  2027,
  '[{"name":"氷川 竜介","role":"教授"}]',
  3,
  'ゼミ',
  '選択',
  4,
  '["通期"]',
  '学術的研究としての基礎的な考え方、すなわち「問いをたてて証拠をとり、立証する」を実践する。因果関係の分析により、感情的判断ではなく高い論理的思考力を獲得する。各回のテーマに対し、参考書類をガイドとして授業時間以外の予習・復習を行い、教えたこと以上の分析力を提示すること。また学生同士のディスカッションを通じ、多様な着眼点を獲得し、自身の意見も客観的・批判的に検証した上で伝え、課題解決力を高める。',
  'レポート・成果物50％、発表・発言50％（グループ内での発言25％、最終発表25％）。',
  '前提科目
アニメ産業史、アニメのクオリティー管理と商品性、アニメ産業に関わる仕事
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


-- アニメ産業に関わる仕事
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-3-C3-0034-003',
  'アニメ産業に関わる仕事',
  '本科目では、アニメ産業全体の中に「どのような仕事があるのか」を具体的に取りあげる。担当教員のアニメ業界内での実活動、および企業での管理職経験から得た知見をもとに、ピックアップした会社や職種を、具体的に解説する。アニメ業界に限らず普遍的に存在する役割分担の考え方を特に重視する。受講者が将来社会に出たときの対応能力を高めるためである。ディスカッションを行い、仕事に関する的確な考え方を養うことを目標とする。',
  2027,
  '[{"name":"氷川 竜介","role":"教授"}]',
  3,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本科目では、「アニメという製品」または「商品」がエンドユーザーに届くまでの役割分担やプロセスを学ぶ。本授業を通して社会の中で普遍的に存在する「プロセス」に関し、モデルケースを学修することで、将来職業に就いたときの対応力を身につける。学生は本授業で学んだ事例を応用することで、役割分担やプロセスを説明できるようになり、既存の仕組みに対し問題点や改良点を論じ、改善を提案できるようになる。',
  '個人発表70％・グループワーク30％',
  '前提科目
アニメ産業史、アニメのクオリティー管理と商品性
後継科目
ゼミ（アニメ作品の分析メソッド）
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


-- イラストとその活用A
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-3-D1-1030-001',
  'イラストとその活用A',
  'ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの活用について学ぶ授業である。デジタル化した現代社会で、コミュニケーションの手段としてイラストは重要な位置を占める。この授業ではコンセプト構築の手法からイラストの商業的な役割を考察する。ストーリーやバックボーンから、アイデアの出し方、資料の集め方、使い方を学び、オーダーを受けて制作される作品に必要なコンセプトとその構築法を理解する。',
  2027,
  '[{"name":"早川 涼太","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  '商用デジタルイラストにおいてオーダーの基本にあるコンセプトについて理解する。絵は単独で存在しているわけではなく、背後のストーリーや設定があることを学ぶ。その条件を満たしたイラストを制作する、あるいは設定段階から構築するための技術、考え方を身につける。自身でコンセプトを掘り下げ、他者に伝えることができるようになると同時に、発注サイドの考え方にも理解を深め、エンタテンメント産業などさまざまな産業で活躍できる能力を養う。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
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


-- イラストとその活用B
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-3-D1-1030-002',
  'イラストとその活用B',
  'ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの活用について学ぶ授業である。ここではマーケティングの視点から、デジタルイラストが活用されるシチュエーションと要求される技法などについて知る。ゲーム、アニメーション、書籍、VTuberなど、各業界の現状と、そこでのイラストの役割、どのような作風がユーザーの支持を集めているかを学び、自分の描いたイラストの商業的価値についてもシミュレーションしてみる。',
  2027,
  '[{"name":"たいら あきら","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  'デジタルイラストの社会的役割についてマーケティングに基づいた実務的な知識を得る。デジタルイラストが商業的に機能している各業界を分析し、その特色を理解する。さらにその業界で就業することをシミュレーションし、自分の技術や現状を分析して、今後身につけるべきスキルについて考える。これらの学びを通じて日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
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


-- イラストとその活用C
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-3-D1-0204-003',
  'イラストとその活用C',
  'ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの活用について学ぶ。デジタルイラストについての知識を本質的なものとするため、学生自身が具体的に手を動かして各種技法を身につけつつ、イラストの商業的な役割を考察する。この授業では、ヴィジュアル系エンタテインメントの現場で非常に重要な背景美術がテーマである。遠近法から、背景の描き方までを習得して、イラストにおける世界観を学ぶ。',
  2027,
  '[{"name":"六番","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  'デジタルイラストの背景美術とその技法について基礎から理解を深め、世界観を持った画像を構築できるようになる。実際に手を動かして描いてみることでパースをはじめとする遠近法を理解し、背景の作画能力を身につけて一枚絵としての完成度を高めることを学ぶ。同時に、世界観をもったクオリティの高い画像の鑑賞能力を養い、日本の基幹産業でもあるクリエイティブを理解して、在学中、卒業後を通じた社会活動に活かしてゆく。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
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


-- イラストとその活用D
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-3-D1-0204-004',
  'イラストとその活用D',
  'ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの活用について学ぶ。イラストについての知識を本質的なものとするため、学生自身が具体的に手を動かして各種技法を身につけつつ、ヴィジュアルの商業的な役割を考察する。この授業では、日本のコンテンツ産業を代表するジャンル、アニメーションについて学ぶ。動き、感情表現、色彩、レイアウトなどの総合芸術であるアニメーションの技法について考察する。',
  2027,
  '[{"name":"浅川 りか","role":"客員講師"}]',
  3,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  '現代におけるデジタルイラストの役割について理解し、手を使い、制作しつつ学ぶことによりそのプロセスと価値を知る。さらに、イラストとそこから派生する作品を鑑賞し、クオリティを見極める能力を培う。それにより日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。本授業ではアニメーションについて学ぶ。重心の変化や効果的なカメラワークを使った表現に挑戦し、演出についても理解する。',
  '提出物100％',
  '前提科目
なし
後継科目
なし
※実務家教員担当科目
 2025年4月1日現在。内容が更新される場合があります。',
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

