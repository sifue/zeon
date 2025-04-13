-- ZEONデータベース構築スクリプト
-- 03_initial_data_subjects_grade2.sql
-- 2年次の科目データの登録


-- インターネット概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-001',
  'インターネット概論',
  'インターネットがどのように形作られているのか、その背景や技術的な要素などについて解説する。ネットワーク同士の接続の仕組みであるASとBGP接続についてや、TCP/IPとDNSの仕組みなどインターネットを支えるそれぞれの技術の詳細についてや、物理障害による事例、国境問題や、大規模トラフィックに対する対応、DDoSなどのセキュリティ対策、最後にインターネットや電気通信を支える法律などの枠組みについても解説する。',
  2026,
  '[{"name":"岡田 雅之","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'インターネットは社会や生活の基盤としてなくてはならない技術である。一方、従来型の通信技術とは異なる考え方・思想に基づき設計・開発が行われている。このようなインターネットの成り立ちとその特性を理解し上手に活用するための知識、テクノロジーを理解することを目標とする。',
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


-- プロジェクトマネジメント概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-002',
  'プロジェクトマネジメント概論',
  'プロジェクトマネジメントは、全ての人にとって役立つ知識体系である。本授業では、世界で標準的に教えられているプロジェクトマネジメントに準拠し、さらに、具体的な事例をもとに分かりやすく構成する。本授業では、プロジェクトマネジメントを行ううえで必須となる、次のような内容を扱う。WBS(Work Breakdown Structure)、スケジューリング、見積もり、品質マネジメント、リスクマネジメント、コミュニケーションと合意形成、調達など。なお、アジャイル開発の重要な概念である自律についても学ぶ。',
  2026,
  '[{"name":"木野 泰伸","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '本授業を通じて、WBSやスケジューリングをはじめ各種技法に用いられる用語の意味や使用方法を理解することを目指す。そのことにより、増加傾向にある国際的なプロジェクトにおいても、海外のメンバーとプロジェクトマネジメントに関する意思疎通ができるようになることを目指す。また、身近な課題解決やチャレンジする目標達成をプロジェクトとしてとらえ、自ら計画し、実行し、コントロールしながら、運営できる能力の獲得を目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
−
後継科目
プロジェクトマネジメント応用
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


-- Webアプリケーション開発3
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-003',
  'Webアプリケーション開発3',
  'Webアプリケーション開発２の続編であるプログラミング入門講座。
JavaScriptというプログラミング言語とNode.jsを使用してセキュリティ上の問題のないWebサービスが開発できるようになる。
簡単なチャットサービスの開発を通じて、データベースを利用したデータの保存・更新・検索・削除を行う。
また、クラウドサービスを利用したWebアプリケーションの公開を行う。
学修にはPCが必要である。',
  2026,
  '[{"name":"折原 ダビデ竜","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '学生はDockerの使い方とテンプレートエンジンの使用方法を深く理解し、Node.jsを用いたサーバの公開技術を身につける。加えて、Cookieを利用したデータの保存・参照能力と、Webの主要な脆弱性について理解力を養う。Node.jsのサーバサイドアプリケーション作成についても理解を深める。これらを通じ、学生はプログラミングを使った開発経験を積み、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
Webアプリケーション開発2
後継科目
Webアプリケーション開発4
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


-- Linux概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-004',
  'Linux概論',
  '無償のOSであるLinuxを学修する。Linuxはサーバ構築や開発環境整備で幅広く活用されており、IT業界で活躍するにあたってはほぼ必須のスキルである。Linuxの概要から起動方法、コマンド操作、シェルプログラミング、セキュリティ対策、その他周辺知識まで、幅広い分野の内容を、実際に手を動かしながら学んでいく。',
  2026,
  '[{"name":"津野 貴大","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'Linuxに関する初歩的な知識から具体的な利用方法まで、実際にLinuxマシンを利用し、手を動かしながら学修する。IT業界で幅広く用いられているLinuxを学習することで、将来IT業界で活躍するための実践的な力を身につけることができる。LinuCレベル1試験の試験範囲に準じた幅広い知識を習得することを目指す。',
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


-- オブジェクト指向プログラミング
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-005',
  'オブジェクト指向プログラミング',
  'この科目では、Scalaというプログラミング言語を使い、オブジェクト指向プログラミングの基本的な概念と活用法を身につける。はじめてのScalaから始めて、基本的な文法や制御構文、デザインパターン、パターンマッチ等について理解を深め、簡単なアプリケーションを作成できるようになる。さらには、高度な開発環境の使い方も学ぶ。',
  2026,
  '[{"name":"吉村 総一郎","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'この科目を通して、Scalaを用いてオブジェクト指向の基本的なコンセプトと文法、制御構文などの理解を深め、プログラムの設計と実装ができるようになることを目標とする。また、統合開発環境を効率的に使える技術も身につけ、最終的には独自の動画プレイヤーのデスクトップアプリケーションの作成ができるようになることを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
Webアプリケーション開発4
後継科目
関数型プログラミング
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


-- コンピューターサイエンス概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-006',
  'コンピューターサイエンス概論',
  'コンピューターサイエンスにおいて重要な知識であるアルゴリズムとデータ構造の基礎を取り上げることで、基本的なアルゴリズムおよびアルゴリズムを考える際に重要なプログラムの効率や計算複雑性といった知識を理解する。プログラミング言語Pythonを活用して実際にプログラムを実行したり書き換えたりすることで、自らプログラムを書く能力を養う。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '基本的なアルゴリズムやデータ構造について、それがどのような場面で用いられるか説明できるようになり、基本的なアルゴリズムについて、その動作を説明できるようになる。また、プログラムの効率や計算複雑性といった知識について理解する。プログラミング言語Pythonを活用して実際にプログラムを実行したり書き換えたりすることで、既存のアルゴリズムを利用してプログラムが書けるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー、Pythonプログラミング
後継科目
オートマトンと形式言語理論
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


-- JavaScriptによる自動化、効率化
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-0204-007',
  'JavaScriptによる自動化、効率化',
  'プログラミングの基本的な考え方から導入し、Google Apps Scriptの駆使を目指す授業。
具体的な課題を通して、アプリケーションの自動化と効率化の技術を学び、身につける。
Google ドライブやGoogle スプレッドシート、Slackなど、日常生活でよく使うツールを自動操作する便利なスクリプトの作成を通じて、プログラミングの基礎知識と実践的なスキルを学んでいく。
最終的には、WebスクレイピングやAPI、グラフ作成、外部サービスとの連携など、データ活用を中心とした実務で活用できるスキルについて学ぶ。',
  2026,
  '[{"name":"折原 ダビデ竜","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '具体的な課題を通じて学んだ知識とスキルを活用し、自身の目標達成に向けた自動化・効率化を実現することを目標とする。具体的には、プログラムによる情報収集、情報のプレゼンテーション、問題解決の実行など、一連のプロセスを自動化するスキルを身につける。プログラミングを用いて自己表現を高め、複雑な問題を解決する力を獲得する。また、より高度なデータ表現力や問題解決力を身につけて、プログラミングを通じた開発能力を向上させる。最終的には、プログラミングを使った開発経験を積み、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。',
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


-- 情報処理概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-0204-008',
  '情報処理概論',
  'IT業界での活躍を目指す学生にとって最適なカリキュラムがこの科目となる。
基本情報処理技術者試験に必須な知識を修得し、コンピュータ理論、データベース、セキュリティ、ネットワーク、アルゴリズムを学ぶ。
企業運営に必要な戦略やマネジメントもカバーする。
詳細なセクションで構成された講義と問題演習で、しっかりと学び、IT社会を生き抜く知恵と教養を身につける。
この講座を通して、豊富な知識を獲得し、ITプロフェッショナルへの道を歩めるようになる。',
  2026,
  '[{"name":"折原 ダビデ竜","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'デジタルツールを用いた情報収集能力、表現能力、コミュニケーション能力を用いて課題を解決する力、ゴールを達成する力を養うために情報処理の基本的な概念について修得することを目標とする。具体的に本科目では、コンピュータを構成する仕組み、2進数や16進数、CPUの処理の流れ、擬似言語で書かれたアルゴリズムの流れ、データベースとその設計、ネットワークとデータ通信、情報セキュリティ、プロジェクトマネジメント、身の回りのIT技術、開発プロセスについての知識を得る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー
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


-- コンピュータ概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-0204-009',
  'コンピュータ概論',
  '計算の必要性から出発し、どのようにコンピュータが発展してきたかを概観することにより、現在のコンピュータの仕組みを理解する。そのことにより、将来、どのようにコンピュータが発展していくかを、検討できる力を身につける。',
  2026,
  '[{"name":"木野 泰伸","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'コンピュータ概論の授業で学ぶことは、計算の必要性を理解し、コンピュータの進化と将来的な発展を概観する力を身につけることである。それは、現代社会において不可欠なデジタルツールを活用して情報収集し、自分の意見を表現し、他者とコミュニケーションを取る能力の基礎である。加えて、コンピュータに関する知識と技術を駆使して課題解決に取り組む力も身につける。本科目では、この知識を通じて、より高度な課題を解決し、自身のゴールを達成する能力が養われるようにすることを目的とする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ITリテラシー
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


-- Webアプリケーション開発4
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-0204-010',
  'Webアプリケーション開発4',
  'Webアプリケーション開発３の続編であるプログラミング入門講座。
JavaScriptというプログラミング言語とNode.jsを使用してセキュリティ上の問題のないWebサービスが開発できるようになる。
本科目では、Webフレームワークを用いたWebアプリケーション開発を通じて、テストフレームワークを使えるようになり、データベースについてもしっかりと学修する。
予定調整アプリを作りながらより実践的な開発手法を身につける。
学修にはPCが必要。',
  2026,
  '[{"name":"折原 ダビデ竜","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '学生はWebフレームワークとその活用法を理解し、フレームワークを用いた開発ができるようになる。また、適切にプログラムのテストを書く能力を身につけ、Webクライアント開発用のライブラリの使用法を学ぶ。さらに、データベースの理解を深め、データベースを利用したWeb開発の技術を修得する。これらを通じて、学生はプログラミングを使った開発経験を積み、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
Webアプリケーション開発3
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


-- 機械学習概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-011',
  '機械学習概論',
  '機械学習の基本から応用まで学ぶことができる科目。機械学習の3分類を理解し、pandasを活用したデータ前処理から、線形モデルやSVM、決定木とその発展形までを実践的に学ぶ。教師なし学習や次元圧縮、特徴量エンジニアリングも体得し、AI技術の幅広い知識を積み上げていく。さらに、例題を通じた技能向上のための試行錯誤も体験する。',
  2026,
  '[{"name":"御手洗 拓真","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '機械学習を学び、実践するための基礎となる主要なAIアルゴリズムを理解し、それらを実践的に活用するためのスキルを習得する。具体的には、機械学習で用いられる概念を理解し、pandas等を用いてデータの前処理・可視化をするスキルを身につける。さらに線形回帰、決定木、ランダムフォレスト、SVMといった主要な機械学習アルゴリズムの原理と、実際の課題に対する活用方法を理解する。そのうえで、モデルの評価手法やハイパーパラメータチューニング、自動機械学習といったさらに実践的なスキルを習得する。これらを通じて、さらなる学修のための下敷きとなる理論理解と、それらを実際の問題解決に適用するための力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
データサイエンス概論、Pythonプログラミング
後継科目
AIアルゴリズム実践
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


-- ディープラーニング2
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-013',
  'ディープラーニング2',
  '本講義では、深層学習研究における基礎となる２種類の構造について扱う。
• 畳み込みネットワークの基本的な構成要素とその必要性について学び、畳み込みネットワークを利用した画像認識プログラムの演習を行う。
• 代表的なRNN （Recurrent Neural Network; 回帰結合型ニューラルネットワーク）の諸手法の概要を学び、実装の演習を行う。',
  2026,
  '[{"name":"河野 慎","role":"講師（予定）"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '• 畳み込みネットワークの基本的な構成要素である畳み込み処理とプーリングの順伝播処理を数学的に記述することができる。
• 畳み込み処理が必要な理由を、等価性や計算効率の観点から説明できる。
• プーリングが必要な理由を、不変性の観点から説明することができる。
• 主要なRNNの構成要素とその意味を説明できるようになる。
• 新たなRNNモデルに対し、その意図を読み解けるようになる。
• 基本的なRNNを実装できるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
ディープラーニング1
後継科目
ディープラーニング3

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


-- ビッグデータ分析概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-014',
  'ビッグデータ分析概論',
  'この授業では、ビッグデータ分析を行うために必要となる技術を広範囲に紹介する。
特に、ビッグデータを扱うためのデータ基盤、データモデリング、SQLによるデータ分析、データガバナンスについて触れる。',
  2026,
  '[{"name":"塚本 圭一郎","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'この科目では、ビッグデータの分析の概観を理解することを目指す。はじめに、2000年以降のビッグデータを扱う分散システム群（データ基盤）に関する知識を身につける。次に、データ基盤の中でもビッグデータ分析に用いられるデータウェアハウスの設計手法と、SQLを用いてデータを加工・集計する手法について学ぶ。最後に、ビッグデータ活用の効果を最大化し、リスクを最小化するためのデータガバナンスについて知る。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
データサイエンス概論
後継科目
ビッグデータ分析実践
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


-- R言語プログラミング
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-0204-015',
  'R言語プログラミング',
  'Rは統計解析に特化して発展してきたプログラミング言語であり、データ解析やデータの視覚的表現が得意である。専門家はもちろん初学者にも適しており、R言語のプログラミングを学ぶことで、一般に用いられている表計算ソフトを用いるよりも自由にデータ解析を行ったり、情報を視覚的に表現することができる。
本講義では、R言語の書き方を学び、実際にR言語でのプログラミングを用いたデータ解析の方法について学修する。',
  2026,
  '[{"name":"川本 宗孝","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '統計解析・データ解析に、R言語のプログラミングを用いることができることを目標とする。また、諸問題をデータ解析を通して解決する力を育成することを目指す。そのために、以下の能力を身につける。
・基本的なR言語が書ける。
・データセットを整理し、解析可能な形にできる。
・関数を用いてデータ解析ができる。
・データを視覚的に表現することができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
データサイエンス概論，統計学入門
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


-- 数理構造の発見と活用
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C1-0204-001',
  '数理構造の発見と活用',
  '数学の普遍性は、それが「構造についての学」であることによる。普遍性を可能にするのは「異なる現象について同じさを考えること」であるが、その「同じさ」とは結局「構造の同じさ」だからである。本講義では、数学において研究されている構造すなわち「数理構造」の様々な具体例を「圏論」と呼ばれる分野の基礎概念を導きの糸として学び、「数理構造とは何か」について各人がより明晰な理解を得ることを目指す。',
  2026,
  '[{"name":"西郷 甲矢人","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '現代数学における「圏」の概念やその様々な例を学ぶことを通じて、「数理構造とは何か」を理解できるようになる。特に、数学的対象の間の「同じさ」は唯一つに定まるものではなく、様々な「同じさ」を措定することが可能であることを知り、むしろその一つ一つの「同じさ」こそが数理構造を規定するということを理解する。同時に、より進んだ数学を学ぶ上で基礎となる諸概念（線型空間と線型写像、位相空間と連続写像など）に親しむ。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
集合と論理, 数学的思考とは何か
後継科目
圏論, 数理科学発展演習Ⅱ

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


-- 集合と論理
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C1-1030-002',
  '集合と論理',
  '集合論と論理学の基本概念を中心に取り扱う。集合の構成や直積集合、写像、像と逆像、二項関係、商集合などの概念を学びつつ、数学的記法や集合演算、論理演算への理解を深めていく。また、述語論理や量化子を用いた証明と反例の扱いも鍛える。高校までの使用例を挙げながら、数の集合の構成や構造と準同型、普遍性、選択公理、濃度と順序数など、集合論と論理学の応用例や理論を学修する。この先の現代数学を学ぶための基盤を形成する。',
  2026,
  '[{"name":"梅崎 直也","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '「集合と論理」を通じて、集合論と論理学の基本概念が理解できるようになる。数学的記法や集合演算、論理演算の理解を深め、述語論理や量化子を用いた証明と反例の扱いに慣れる。集合の定義や直積集合、写像、像と逆像、二項関係、商集合などの概念を学び、数の集合の構成や構造と準同型、普遍性、選択公理、濃度と順序数などの応用例や理論を扱う。文理を跨いだ様々な学問分野において、集合と論理の知識を適切に理解し活用する能力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
線形代数2
後継科目
記号論理, 位相空間, 数理構造の発見と活用, 数理科学発展演習2, 距離空間

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


-- 記号論理
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C1-0204-003',
  '記号論理',
  '論理と証明は数学を記述するための最も基礎的な言葉であると同時に、正確な推論を行ったり他者を説得したりするのに便利なツールでもある。この授業では命題と述語を用いて文章を論理式を用いて正確に表現する方法を学び、論理式として表された主張を証明するための手法を身につける。形式化された証明を記述するにあたり、定理証明系と呼ばれるソフトウェアを利用する。',
  2026,
  '[{"name":"湯山 孝雄","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '基本的な論理結合子(かつ、または、〜でない、ならば、すべての、ある)の意味を理解し、論理式と日本語の文章を相互に翻訳できるようになる。さらに、各論理結合子に対応する推論規則(導入規則・除去規則)を理解し、数学的に厳密な証明が書けるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
集合と論理
後継科目
数理論理学

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


-- 解析学3
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C1-1030-004',
  '解析学3',
  '解析学３では、ベクトル解析を中心に学び、ベクトル場の微分・積分、グリーンの定理、ストークスの定理、ガウスの定理などについて理解を深める。そして、微分形式、陰関数定理、接ベクトル、リーマン計量、接続と曲率、フロべニウスの定理といった幅広いテーマについても取り扱う。さらに、電磁気学、流体力学、弾性力学、トポロジー、幾何学などの具体的な応用例を通じ、理論を応用する力を養う。',
  2026,
  '[{"name":"梅崎 直也","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '解析学３を修了すると、ベクトル解析の基本的な技術や考え方を身につけることができる。具体的には、ベクトル場の微分・積分、グリーンの定理、ストークスの定理、ガウスの定理、ポアンカレの補題、微分形式、陰関数定理などを理解し、これらを用いて具体的な問題を解く力が身につく。また、電磁気学や流体力学などの物理学における応用例を学ぶことで、数理手法が社会の基盤として存在し、どのように活用できるかを理解する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
解析学2, 線形代数2
後継科目
複素解析, 電磁気学

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


-- 距離空間
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C1-1030-005',
  '距離空間',
  '距離空間を中心に、その性質や特性を理解することを目指す。距離空間と連続性、実数の連続性、数列の収束、関数の連続性、中間値定理、最大値定理、積分、一様収束、極限の順序交換、開集合・閉集合、連結性、コンパクト性、関数空間のノルムなど、解析学の基本的な概念と定理に触れ、それらを自由に操れる能力を育てる。これらの理解を深めることで、数学の応用や理論の発展に対する理解も深まることを目指す。',
  2026,
  '[{"name":"梅崎 直也","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '距離空間と連続性の理論を深く掘り下げることで、数列の収束や関数の連続性、中間値定理、積分、一様収束など解析学の基本的な概念と定理を理解する。連続性や収束の理論は、情報技術におけるアルゴリズムの設計や解析など、社会の基盤となる数理に直結している。また、正しい理論を正確に理解し応用する姿勢を養う。これらを学ぶ過程で、情報技術や社会の基盤にある数理を理解する力が身につく。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
集合と論理, 解析学2
後継科目
数理科学発展演習2, 位相空間, 積分と測度

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


-- 複素解析
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C1-1030-006',
  '複素解析',
  '複素解析について深く理解するための授業を行う。まず、基礎となる複素数や複素関数を学び、正則関数の定義から具体的な関数の計算までを学ぶ。次に、複素平面上での積分理論を整理し、特に線積分、コーシーの積分定理や公式について詳しい説明を行う。さらに、ベキ級数による関数の表現やローラン展開、留数定理などを学び、理論と具体的な計算の両面から理解する。最終的には、正則関数の諸性質について考え、複素解析の美しさと奥深さを感じてもらえるようにする。授業を通じ、複素解析の基本理論と計算技術を身につける。',
  2026,
  '[{"name":"梅崎 直也","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '複素解析の理解を深め、正則関数や複素線積分、コーシーの積分定理・公式、ベキ級数、級数の収束などの学修を経て、数学理論の理解を深める。さらに、それらを用いた複雑な計算や証明に挑戦することで、数理的思考力を育む。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
解析学3
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


-- 日常に現れる物理学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C1-0204-007',
  '日常に現れる物理学',
  '日常生活に潜む物理的現象を、オンデマンド授業を通じて紐解く。本授業は、高校での物理の履修は前提とせず、物理学を初めて学ぶ人を対象に授業を行う。概算のテクニックから始まり、炭酸の泡、エアコン、ゴムの性質など幅広いテーマを学び、物理学の基礎と応用の幅広さを理解する。授業外では、教科書と映像を活用して自主学修を行い、それぞれの知識を深める。評価は確認テスト、レポート、及び単位認定試験による。',
  2026,
  '[{"name":"作道 直幸","role":"准教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '物理学の多彩な概念や理論を用いて、日常生活や自然現象の原理やメカニズムの理解を深める。また、物理学的な視点から問題を分析し、適切な解を導く方法を学ぶ。マクロからミクロまでのさまざまなスケールで物理の法則が働くことを理解し、それを他分野の知識と結びつけて新たな視点を開く。物理学の基礎的な考え方を通じて、文理融合型の思考力と表現力を養う。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
力学，電磁気学

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


-- 力学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C1-1030-008',
  '力学',
  '古典物理学は、力学と電磁気学と熱力学の３つからなり、現代物理学の基礎となる学問である。古典物理学の学修は、現代の科学技術を基本原理から理解するために必要不可欠である。本講義では、高校での物理の履修は前提とせず、物理学を初めて学ぶ人を対象に、力学の講義を行う。力学は、物体に力が働いたときにどのような運動を行うか、その法則を明らかにする学問である。最初の11回で、質点系の力学を丁寧に学ぶ。続く4回で、剛体、流体、弾性体、粘弾性体などの身近な物体の力学を簡潔に学ぶ。',
  2026,
  '[{"name":"作道 直幸","role":"准教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '力学の理解によって、物理世界の基礎を把握し、論理的思考を身につける。質量、速度、運動量、落下運動、運動方程式など、重要な力学的概念を学修することで、日常生活で見過ごしていた物理現象を理解し、それを数学的に表現する能力を養う。また、力学的エネルギーや仕事、角運動量といった高度なトピックを扱うことで、情報技術や社会の基盤にある数理を理解する力を獲得する。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
日常に現れる物理学，解析学1
後継科目
電磁気学, 熱統計力学

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


-- 機械翻訳実践（法学）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'LAN-2-B2-1200-001',
  '機械翻訳実践（法学）',
  '複数の地域に共有される法的トピックに関して英語などの外国語による論文、書籍、記事等を機械翻訳を読解ツールとして用いて読み込み、日本語の情報ソースに限らない幅広い情報源からの知識吸収の方法を提示する。また、その背後にある文化的・政治的差異や文脈を意識的に発見・解釈し、身近な環境がもたらすバイアスに気づく機会を与える。外国語文献の読解読解から得られた新たな知識、視点をさらに自らの興味・関心に結びつけて深化させる過程を指導する。',
  2026,
  '[{"name":"山口 真由","role":"教授"}]',
  2,
  'ライブ映像科目',
  '選択必修(主要)',
  2,
  '["1-2Q"]',
  '機械翻訳を多様な外国語文献の読解のツールとして用い、一次ソースからの情報収集能力を身につけ、異なる地域の法や法実践に対する知識や見識を深める方法の幅を広げることができる。また、読解した内容の背後にある文化的差異や文脈に気づくことで、現実世界を批判的に深く理解し、主体的な見解の形成する視点を養うことを目標とする。',
  '順次公開予定',
  '前提科目
多言語ITコミュニケーション、機械翻訳実践（英語読解・作文）
後継科目
なし

 2025年4月8日現在。内容が更新される場合があります。',
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


-- 機械翻訳実践（情報）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'LAN-2-B2-1200-002',
  '機械翻訳実践（情報）',
  '情報技術やプログラミングに関する情報やチュートリアルは多数存在するが、その多くは英語で書かれており、これらのリソースを活用できていない日本語話者も多い。本科目では、機械翻訳を用いてこれらの英文資料を読解し、新しい知識を身につけるとともに、文化的差異について考察する。また、二次創作活動としての翻訳に挑戦し、日本語での表現力を養うとともに、日本の文化や言語に潜むバイアスに向き合う。',
  2026,
  '[{"name":"ガーバー 明菜","role":"助教"}]',
  2,
  'ライブ映像科目',
  '選択必修(主要)',
  2,
  '["1-2Q"]',
  '情報技術やプログラミングに関する新しい知識を修得するために、機械翻訳を補助ツールとして用い、英語資料を正しく読解できる。機械翻訳を他言語読解のツールとして用い、英語に限らず、多様な外国語文献に触れ、文化の違いや歴史的背景などを理解しようとする姿勢が身についている。また、これらの活動を通して得られた気づきや考察を他者と共有し、共に学ぼうとする態度を身につけている。',
  '順次公開予定',
  '前提科目
多言語ITコミュニケーション、機械翻訳実践（英語読解・作文）
後継科目
なし
※実務家教員担当科目
 2025年4月8日現在。内容が更新される場合があります。',
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


-- 機械翻訳実践（異文化理解）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'LAN-2-B2-0034-003',
  '機械翻訳実践（異文化理解）',
  '異文化理解に関する複数の外国語（英語、フランス語など）による論文、書籍、記事等を機械翻訳を読解ツールとして用いて読み込み、日本語の情報ソースに限らない幅広い情報源からの知識吸収の方法を提示する。また、その背後にある文化的差異や文脈を意識的に発見・解釈し、身近な環境がもたらすバイアスに気づく機会を与える。外国語文献の読解、読解から得られた新たな知識、視点をさらに自らの興味・関心に結びつけて深化させる過程を指導する。',
  2026,
  '[{"name":"田岡 恵","role":"教授"}]',
  2,
  'ライブ映像科目',
  '選択必修(主要)',
  2,
  '["3-4Q"]',
  '機械翻訳を多様な外国語文献の読解のツールとして用い、一次ソースからの情報収集能力身につけ、異文化理解における知識や見識を深める方法の幅を広げることができる。また、読解した内容の背後にある文化的差異や文脈に気づくことで、現実世界を批判的に深く理解し、主体的な見解の形成する視点を養うことを目標とする。',
  '順次公開予定',
  '前提科目
多言語ITコミュニケーション、機械翻訳実践（英語読解・作文）
後継科目
異文化理解、ゼミ（異文化理解）

 2025年4月8日現在。内容が更新される場合があります。',
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


-- 機械翻訳実践（自然科学）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'LAN-2-B2-0034-004',
  '機械翻訳実践（自然科学）',
  '機械翻訳を外国語の読解ツールとして用いて読み込み、国内の情報源に限られない多角的な視点から問題状況を分析する方法を提示する。広範な科学分野の論文、書籍、記事等を読み込み知見を深めるとともに、どのように科学知識にアクセスするかの手段を教示する。また科学論文や雑誌記事の背後にある歴史や文化的差異を意識的に発見・解釈し、バイアスに気づく機会を与える。',
  2026,
  '[{"name":"竹内 薫","role":"教授"}]',
  2,
  'ライブ映像科目',
  '選択必修(主要)',
  2,
  '["3-4Q"]',
  '機械翻訳を活用することで、ネイティヴのような英語読解能力がなくとも、科学誌ネイチャーの論文冒頭部の要旨や、他分野の科学者向けの解説などは読めることを体験してもらう。科学知識にどのようにアクセスするか理解し、また機械翻訳を活用することで、自らの英語力も高めて欲しい。',
  '順次公開予定',
  '前提科目
多言語ITコミュニケーション、機械翻訳実践（英語読解・作文）
後継科目
なし

 2025年4月8日現在。内容が更新される場合があります。',
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


-- 機械翻訳実践（日本研究）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'LAN-2-B2-0034-005',
  '機械翻訳実践（日本研究）',
  '本授業では、海外の研究機関や研究者が運営する日本研究関連の英文資料データベース・ポータルサイトの学術的な文献を読解ツールとして用いて読み込み、日本の資料のみに限らない幅広い情報源からの知識吸収の方法を提示する。そうすることで、文化的差異や文脈を意識的に発見・解釈し、無意識的なバイアスに気づく機会を与える。また、外国語文献の読解から得られた知識、視点をさらに自らの興味・関心に結びつけて深化させる過程を指導する。',
  2026,
  '[{"name":"Pradhan Gouranga Charan","role":"講師"}]',
  2,
  'ライブ映像科目',
  '選択必修(主要)',
  2,
  '["3-4Q"]',
  '機械翻訳を外国語文献の読解のツールとして用い、一次ソースからの情報収集能力を身につけることで、日本研究における知識や見識を深める方法の幅を広げることができる。また、外国語で書かれた日本研究の文献を読解することで、文化的差異や文脈に気づき、日常の世界を批判的に捉えることができると同時に、主体的な見解の形成する視点を養うことを目標とする。',
  '順次公開予定',
  '前提科目
多言語ITコミュニケーション、機械翻訳実践（英語読解・作文）
後継科目
ゼミ（文芸批評論）

 2025年4月8日現在。内容が更新される場合があります。',
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


-- 認知神経科学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C1-1030-001',
  '認知神経科学',
  '私たちの知覚や記憶や感情が生み出されるのは、脳のどのような働きに基づいているのだろうか。認知神経科学（認知脳科学）は、このような知的興味から生まれた学問分野である。ここでは、知覚、認知、記憶、またそれらの発達的な変化などのいくつかの現象の背後にある脳の働き、具体的には脳のどのような部位が協力し合っているのかについて、研究現場の雰囲気を交えて解説する。',
  2026,
  '[{"name":"積山 薫","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '本授業において研究現場の具体的な雰囲気を知ることで、認知神経科学の最新の知見を適切に理解し、自身の言葉で整理・編集し、他人に伝える力を身につける。また、自身の認識や行動の背後にある脳の働きやメカニズムを理解することで、より効率的な学修や問題解決法を打ち立てる力を身につける。さらに、脳や行動を研究するための技術についても学ぶことで、情報技術の社会における役割を理解する。そして、心と脳の発達や老化の理解を通じて、人間の心理や行動に対する理解を深め、それを社会生活や職業生活に活かす力を伸ばす。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
心理学
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


-- 科学哲学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C1-1030-002',
  '科学哲学',
  '今日の我々の生活は、科学なしには考えられない。それとともに、「科学的である」ということは「正しさ」の基準のように捉えられている。しかし一体、「科学的である」とはどういうことだろうか？実のところ、科学という営みは実に多様であり、一言で定義できるものではない。本講義では、そうした多様な科学的営みを支える「科学的な考え方」や「推論の仕方」を、科学哲学の観点からあぶり出していくことで、過去、現在、そして未来の科学のあり方を考えていく。',
  2026,
  '[{"name":"大塚 淳","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '「科学とは何か」という問いに、自分なりの答えを導き出せるようになる。特に、メディアなどで報道される科学的成果を絶対確実な「真実」として無批判的に受け入れるのではなく、かといって闇雲に懐疑的になるのでもなく、それがどのようなプロセスと方法から導き出されたのかを客観的にイメージし解釈できるようになる。「科学」と呼ばれているものは決して一枚岩ではなく、様々な目的を持つことを理解する。また科学が我々の社会および生活に及ぼす影響を理解し、その関係性を考えることができるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
哲学概論
後継科目
統計学を哲学する、AI時代の科学と哲学

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


-- 人新世の人類学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C1-1030-003',
  '人新世の人類学',
  '「人間はどこから来て、どこへ行くのか？」――これが今ほど切実に問われる時代はない。いまや「大型動物の９割が人間とその家畜」と言われるほどに地球的な影響力を高めた反面、AIやロボットの進化により唯一の知的主体としての特権性が危ぶまれている。再生医療やゲノム編集により「寿命」や「生死」の概念も再定義され、宇宙時代には「地球的常識」もリセットされる。「人間の再発明」の時代の新たなコモンセンス（共通感覚）を探る。',
  2026,
  '[{"name":"竹村 眞一","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'そんな時代だからこそトレンドの後追いでなく、受け身で技術に振りまわされずに、「人間」としてどうありたいのか？どんなLife-style（生命・生活・人生のあり方）を選び取るのか？を主体的に考えるリテラシーを育成する。その武器となるのは「歴史」や「文化」に対する知見である。人はどのような経緯で現在のようになったのか？生老病死も歴史的・文化的にデザインされたものなら、それをどう再設計するか？21世紀の人類学的思考を磨く。',
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


-- 日本文学Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C1-0204-004',
  '日本文学Ⅱ',
  '本授業では、主な文学的な批評理論・概念を紹介しながら、それを応用して具体的な文学作品を解読し、文学の視点から我々が現在直面している様々な社会問題について考えたい。国内外の文学作品から具体例を提示し、急速にグローバル化された社会において活躍するために基礎となる人文知識と概念について学んでいく。',
  2026,
  '[{"name":"Pradhan Gouranga Charan","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本授業では、文学作品を分析するための主な文学理論について知識を得ながら、実際に文学理論を応用して文学作品を分析できる能力を身につけることができる。また、文学作品や評論の読解力が身につき、思考力、表現力も育成することができると共に、文学の視点で日常生活に面する社会問題について考える能力を身につけることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
日本文学Ⅰ
後継科目
日本文学Ⅲ

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


-- 文化人類学Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C1-0204-005',
  '文化人類学Ⅱ',
  '「文化」は、物理と生物の自然界で説明できない人間の「世界」であり、この「文化」という言葉は時代や目的によって、様々な意味を持つようになった。本授業では、文化人類学の代表的な論点や文献を取り上げ、文化と世界観、自然界、と活動との関わりを検討し、「文化とは何か」を学ぶ。人間の基層的な問題がどのように議論されてきたのかを俯瞰することによって、これからの世界を想像する力を身につける。',
  2026,
  '[{"name":"Hernández Álvaro David","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本授業では、文化に関わる基層論点を検討し、また批判することによって、世界を見る視野を広め、関心のある課題をより柔軟的に考えることができるようになる。言語、メディア、宗教、秩序、身体や経済などをめぐる様々な概念を、具体例からどのように凝固してきたのか、お互いにどんな関連を持つのかを検討することで、一見無関係に見える問題の共通点を見つけ、概念を批判的に使うことができるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
文化人類学Ⅰ
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


-- 民俗学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C1-0204-006',
  '民俗学',
  '「方法なき方法論」とかつて吉本隆明に批判された柳田國男の民俗学が集合知としての「歴史」や「社会」を構築する「方法」それ自体にあったことを時間軸に沿って説明し、その問題系と方法、そしてアカデミズムによって知が分断される以前の総合性が現実及びオンラインの社会にどう「接続」するかを考える。また、柳田の学問が山人論に向かうロマン主義的側面と主権者教育運動の双極性を持つことの理解を通じ、その一方からしか語られなかった民俗学の全体像を講義する。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '柳田國男の学問の双極性を理解しその全体像を理解する視点を獲得すると共に、「現在」という文脈の中でいかに活かしていくか、その基本的知見（柳田の定義する「史心」）を獲得する。特に柳田民俗学が内在する「方法論」及び社会性について理解するとともに柳田の民俗学構想がオンラインの時代以前にあっていかに先駆的に情報論的思考に支えられていたのかを理解する。',
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


-- 日本科学史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C1-0204-007',
  '日本科学史',
  '「人間にとって科学とは何か」——科学技術によって縁取られた現代社会に生きる私たちにとって、この問いは極めて切実なものである。本授業では、近代日本のあゆみのなかで科学を捉えることで、この問いに歴史からアプローチする。現代日本の科学を相対化したうえで、人間と科学の未来について、自分なりの考えを持てるようになることを目指す。なお、一部の回ではテーマに応じてゲスト講師をお招きする。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本授業では近代日本の科学史を学ぶ。本授業を通じ、自分なりの科学像、あるいは科学の歴史像を構築し、これを他者に説得的に説明できるようになることを目指す。また、科学が人間の営みであることを歴史の中で具体的に理解し、文理を分かたず思考することの必要性・有効性を認識する。さらに、自ら「問い」を立て、歴史学的な思考法によってこれにアプローチできるようになることを目指す。',
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


-- 芸術と文化資本Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C1-0204-008',
  '芸術と文化資本Ⅰ',
  'いわゆる大富豪たちが蓄積した富によって美術館や図書館、オーケストラや大学が設立され、今も莫大な寄付金で非営利財団が運営されているアメリカ。「文化資本」とは何かを考えるため、莫大な利益を得た実業家たちを敵視するのではなく、利益を社会に還元することに意味を与えて讃えるアメリカ社会の価値観がどのように形成されたのかを分析して理解できるようにする。',
  2026,
  '[{"name":"岩渕 潤子","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '日本で育つと「金持ち＝悪」という価値観を持つことが多いようだ。なぜそのような価値観を身につけてしまうのだろうか？アメリカの子どもたちが「成功」して「お金持ち」になることを夢見ること、成功したアスリートもヴェンチャー起業家も慈善事業に寄付して支援することを当然と考えることの意味を考えよう。変化する社会状況を適切に理解し、自ら学んでそれを創造的アウトプットに繋げる能力を身につけよう。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
近・現代アート概論
後継科目
芸術と文化資本Ⅱ

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


-- ネット時代の著作権
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C2-1200-001',
  'ネット時代の著作権',
  '著作権制度に関する基本的な説明を行い、その上でインターネット・デジタル環境下の著作権問題における最新の具体的なテーマについて解説を行うこととし、具体的な著作権問題について考えるための法的思考力を養う。本講座は授業の趣旨に即した実践者・実務者を招いての授業回がある。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  'ライブ映像科目',
  '選択',
  2,
  '["1-2Q"]',
  '著作権法の基本的な特徴及び構造について習得するとともに、昨今のインターネット・デジタル面での技術の発達により生じている著作権の具体的なテーマ・問題について考えることにより、著作権法に関する基本的な仕組みや日常的なインターネット等の利用において発生する著作権問題の概要について他者に説明することができるようになることを目標とする。',
  '確認テスト50%,単位認定試験50%',
  '前提科目
法学Ⅰ
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


-- ジェンダー論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C1-1030-002',
  'ジェンダー論',
  'この授業では、「ジェンダー」や「LGBTQ＋」「インターセクショナリティ」「ポストフェミニズム」などのジェンダー論における基礎知識を学びつつ（第１～４回）、SNSやAIなどのデジタルテクノロジーとジェンダー（第５～７回）、音楽や映画、マンガなどのクリエイティブ労働とジェンダー（第８～１１回）、そして科学とジェンダー（第１２～１５回）をテーマに、現代社会におけるジェンダー問題を学んでいく。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '各講義において説明するジェンダー問題を捉える重要概念を理解し、それを用いて現代社会のジェンダー問題を捉える力を身につけることを目標とする。
ジェンダーの知識は今日の多様性の時代において不可欠である。基本的な知識を学ぶことを通して、ソーシャルグッドな人材を目指す。また講義ではジェンダーを身近なこととして考えるために、テクノロジーやクリエイティブ労働、科学といったものをテーマに据えている。この講義を通して、身近な文化や社会現象に対してジェンダー的な見方・考え方をできるようにする。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
社会学Ⅰ
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


-- メディア論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C1-1030-003',
  'メディア論',
  '「媒介」としての意味を持つメディアは、テレビ等のマスメディアだけを意味するもではなく、ネットやSNSだけを意味するものでもない。本講義は、漠然とイメージしがちなメディアについて、「つながり」という観点から考える。マスメディアだけでなく、様々な人の心理や、社会現象の背景を考えることで、多様なものの見方を養うことが可能となり、受講者自身が自ら考える力をつけることが可能となる。',
  2026,
  '[{"name":"塚越 健司","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '本講義はいわゆるマスメディアだけでなく、世代ごとの現在の捉え方を考えたり、スマホやVR、生成AI等の最新技術と私たちの社会のつながりについて学ぶ。それにより、情報技術について深く理解し、情報技術を用いた表現ができるようになる。また、多様なものの見方を横断的に分析・理解し、現実の様々な事象をその背景から批判的に考察することが可能になる。何より、「自分で考える」ことができるようになる。',
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


-- 科学技術と社会
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C1-1030-004',
  '科学技術と社会',
  '今日、科学技術と社会との関係はますます複雑化している。知識基盤社会が謳われながらも、高度に専門化された知識はしばしば私たちの理解を超え、一方でそうした専門知への不信も広がっている。こうした中で、私たちはどのようにして科学技術とよりよい関係を結ぶことができるのだろうか。本授業では、科学技術と社会の関係を考える科学技術社会論（STS）の知見を学ぶとともに、（専門家と市民双方の）責任、期待、無知、ジェンダーなどの多様な観点から、私たちと科学技術とのよりよい関係について考える。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '今日の科学研究・技術開発がどのような営みであるかを理解し、それらと社会との関係を多様な視点から批判的に分析できるようになる（理論的目標）。また、そうした知見をもとに、各自が専門知との適切な関係を構築できるようになる（実践的目標）。今日の社会を生きる上で必須の情報リテラシーの一つとしての、科学技術リテラシーを身につけることが本授業の到達目標である。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
社会学Ⅰ
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


-- 情報社会論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C1-1030-005',
  '情報社会論',
  '不確実で変化の激しい知能情報社会で価値の創造に踏み出すためには、まず情報社会の全体像を理解する必要がある。本授業では、このために（1）情報化を政治、経済、社会の視点から総合的に俯瞰する枠組みを示す。ここで情報化（informatization）とは、データや知識とICT（Information Communication Technology）つまり情報通信技術およびコンピュータのより高度な利用を促進するグローバルで自律・分散・協調的な活動のことである。つぎに（2）この総合的な枠組みとの関係で、情報社会の具体的な課題や争点を取りあげ、個別の課題や争点を考える際の前提となる社会科学の主要な研究を紹介する。こうした社会科学の研究は、個別の課題や争点を認識するパターン、研究の状況、解決の方策を提供するものである。この講義の全体は、つぎの4部構成になっている。①情報社会学の分析枠組みと情報通信の技術的背景、②情報社会の政策形成と政治過程、③情報社会の経済動向と政治経済思想、④情報社会の人文科学と基礎教養。この講義では知能・情報社会の観点から他の講義に繋がる導線を示す。',
  2026,
  '[{"name":"山内 康英","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '多様なものの考え方を用いて分析したり、批判的に検討して未来像を打ち立てるためにはベーシックな枠組みに立ち戻って考えるのが有効だ。この講義では「情報化」を「近代化（modernization）」の一環として位置付ける。これは「情報社会」を「近代（Modernity）」という継続的な歴史変化のなかで捉えることを意味する。この講義を通して（1）「近代」という社会科学の基礎概念との関係で「情報社会」を総合的に俯瞰する分析枠組みや、（2）「政治」「経済」「社会」に関する社会科学の調査研究を具体的な課題や争点に当てはめる方法論を身につけ、これから個別の関心領域に進んで、情報収集能力、表現能力、コミュニケーション能力を用いて課題を解決しゴールを達成する準備を整える。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
情報社会の総合安全保障、国際関係論、民主主義論、戦後日本史1、戦後日本史2・ゼミ（情報社会の政治学）

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


-- 戦後日本史1
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C1-1030-006',
  '戦後日本史1',
  '本講義では、首相秘書官や関係者など政権中枢に近い人々をゲストに招き、「なま」の声をもとに戦後日本の「オーラル・ヒストリー」を描いていく。 敗戦後の民主化への努力、平和主義と日米同盟、高度経済成長とその歪み、バブルの崩壊と低成長といった、度重なる「板挟み」において、当時の日本のリーダーたちはどのような観点から、どのように「決断」をしたのだろうか。本科目では、終戦直後から、「戦後政治の総決算」を謳った中曽根康弘政権までを扱う。',
  2026,
  '[{"name":"山内 康英","role":"教授"},{"name":"順次公開予定","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'この授業を通じて、戦後の日本政治を、さまざまな「決断」の連続として捉え直すことができる。具体的には、政権運営の「なま」の声を聞き、複数の選択肢とジレンマの中で、リーダーたちがどのような選択をおこなってきたのかを知ることで、戦後日本の軌跡を多角的に検討する視点を身につけることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
戦後日本史2

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


-- 異文化理解
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C1-1030-007',
  '異文化理解',
  'グローバルにつながった世界に生きる人間として、様々な文化の違いを理解することの重要性と楽しさを認識するきっかけを作る。異文化研究の代表的な概念やモデルの学修を通じて、国の文化の特徴を把握する力を身につけると共に、自分自身のアイデンティティや無意識の偏見を自覚し、他者と共に生き働く上での感度を鍛える。このような知識と意識の獲得を通じて、異文化間でのコミュニケーションや協業に積極的に取り組むマインドを養う。',
  2026,
  '[{"name":"田岡 恵","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '本科目を通して、世界各国の文化の特性を理解し、異なる文化や背景を持つ人々とのコミュニケーションを建設的に行う能力を身につけることができる。また、各文化の背景にある歴史や宗教等のコンテクストを理解することにより、グローバル社会の基盤となる多様な価値観・倫理に思いを馳せ、深く思索する力を高め、自己のアイデンティティや先入観についても自覚し、異文化間でのコミュニケーションや協業に積極的に取り組む心構えを身につけることができる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
ゼミ（異文化理解）

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


-- 大学とメディアの人類史
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C1-1030-008',
  '大学とメディアの人類史',
  'メディア革命とグローバル化の中での大学の苦境を人類史的な視野で捉え返す。第1部では、中世西欧の都市ネットワークを基盤とした大学の誕生を論じ、これと日本の「大学」概念の決定的な違いを示す。第2部では、近世以降、大学と出版がいかに絡まり合ってきたのかを、百科全書や図書館、博物館などと結びつけて論じる。第3部では、戦後の大学改革が大学紛争の中で挫折し、1990 年代以降の新自由主義の波を受けていく過程を論じる。',
  2026,
  '[{"name":"吉見 俊哉","role":"特別招聘教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'この授業では、（１）大学と（２）出版を中心とする知識メディアの歴史を扱う。したがって、これらの知の歴史を多様な視座から理解し、批判的に検討することが第1の到達目標となる。第2に、日本語の「大学」と中世世界を基盤に発達してきた〈大学=ユニバーシティ)の概念がどう異なるかを文理の境界を超えて理解する。第3に、戦後に試みられた大学改革が、なぜ新しい社会状況やメディア状況の中で挫折したのかを理解し、大学とメディアの未来像を打ち立てる力を得てほしい。',
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


-- 社会学Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C1-0204-009',
  '社会学Ⅱ',
  'この授業では、社会学的思考法についての理解を深めていくことを目的とする。社会学は、その他の学問に比べると多様な対象を、多彩な方法で研究する学問であると言える。この講義では、「科学」「技術」「メディア」「都市」「経済」「政治」「環境」「グローバル化」「時間」「空間」など、さまざまな領域における社会学的思考を扱っていく。',
  2026,
  '[{"name":"谷口 祐人","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '社会学的思考法のエッセンスは、常識的な見方を疑うということである。この授業では、多様な分野における社会学的思考法を学修することによって、批判的思考力を身につけ、主体的な意見を形成できるようになることが目標である。「常識を疑う」スキルは、非常に応用範囲の広いものである。どのような職業につくにしても、新たな価値を創造したり、難局を切り抜けるために、「常識を疑う」ことができるかどうかは重要である。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
社会学Ⅰ
後継科目
社会学Ⅲ

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


-- マクロ経済学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-2-C1-1030-001',
  'マクロ経済学',
  '国の景気を測るには、GDPや失業率、消費者物価指数、貿易収支などが利用される。経済発展は、GDPの成長率や一人当たりのGDPを通じて測定される。マクロ経済学の基本概念を理解し、政府機関や国際機関、経済研究機関などが提供するデータを利用することで、経済の現状を把握し、課題を分析する視点を身につけられる。これにより、経済全体の動きを把握し、持続可能な発展に寄与することができる。',
  2026,
  '[{"name":"市橋 勝","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '本科目を通じて、マクロ経済全体の把握や諸概念の意味、統計データの解釈などのスキルが磨かれる。また、経済データの多様な解釈を理解することで、多角的な視点から考える力と健全な批判的精神が養われ、複雑かつ不確実性の高い新しい時代に対応する力を身につけられる。これにより、経済全体の動向をより深く理解し、持続的な発展に寄与できる能力を身に着けることが期待される。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
経済入門
後継科目
マクロ経済分析演習、ゼミ（経済発展を考える）

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


-- ミクロ経済学
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-2-C1-0204-002',
  'ミクロ経済学',
  '私たちを取り巻く複雑な経済環境における、個々の消費者や企業が巻き起こすさまざまな事象を、ミクロ経済学の考えを用いて解釈する方法を紹介する。具体的な事例の考察をもとに、個々の消費者がどのような行動を通じて合理的な選択を試みているのか、また企業はどのように利潤の最大化を目指すのか、それぞれの意思決定プロセスの仕組みを理解し、社会やビジネスの事象に対する、より複合的かつ客観的な視点を養う。',
  2026,
  '[{"name":"渡邉 聡","role":"教授(学部長)(副学長)"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '個別の消費者や企業の行動に焦点をあて、経済活動の基本を具体的かつ多様な視点から理解することができるようになる。これらの理解の実践的な活用として、企業においては、価格設定や生産最適化、市場競争力を向上させるための選択に関して論理的な解を導くことができるようになる。これにより、消費者と企業の双方の視点から、現実の経済状況を深く把握し、未来に向けた効果的な戦略を検討する力を身につけることができるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
経済入門
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


-- 企業経営とファイナンス
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-2-C1-0204-003',
  '企業経営とファイナンス',
  '本科目では、キャッシュの観点から見たリスクやリターンに加えて事業の資金調達について取り上げる。企業価値の時価をどうやって計算するか、有利子負債と自己資本からなる資本構成をどうやって最適化するかの基礎的な考え方を解説し、理解してもらう。さらに将来のプロジェクトを評価する方法、スタートアップの資金調達、Ｍ＆Ａやグループ企業の財務最適化についての基礎を考える能力を養う。',
  2026,
  '[{"name":"村藤 功","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本科目を通して学生はキャッシュを取り扱う方法についての理解を開始する。プロジェクトのリスクやリターンの評価、企業価値の時価の計算、事業の資本構成である有利子負債と自己資本をどのようにつけるかの概念や考え方を適切に理解し、伝えられるようになる。さらに進んで事業のスタートアップや経営環境の変化に対応するＭ＆Ａの概念や考え方を適切に理解するための基礎を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
企業経営、企業経営と会計
後継科目
財務分析演習、企業価値創造とM＆A
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


-- デジタル・マーケティング
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-2-C1-0204-004',
  'デジタル・マーケティング',
  '企業マーケティングは、今や日々発生する膨大な量のデジタルデータの処理・分析を前提に進化している。本科目では、企業が利益を上げて設定した成長目標を達成できるための礎となるマーケティング全般の基礎を教示する。具体的には、デジタルツールを用いたデータの収集・集計・分析の基礎を伝え、それら解析結果を活用して、当該企業が顧客に提供する価値がその商品・サービスの購入・消費において的確に伝えられる方策を提示する。',
  2026,
  '[{"name":"千葉 尚志","role":"准教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'ビジネスにおけるマーケティングの役割、および顧客理解とブランディングについての基礎的な概念の理解に始まり、デジタル社会のマーケティングに欠かせない個別のメディアの使用法を実践的な事例から習得する。起業やマーケティングのキャリアの入り口に立つために必須の視点と、デジタルツールを用いた情報収集・編集能力や、ビジネスにおけるゴールを達成する力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
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


-- スタートアップ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-2-C1-0204-005',
  'スタートアップ',
  '本科目では、多くの学生が起業を身近な活動として捉え、学生起業や将来のキャリアの選択肢として検討できるようになることを目指す。具体的には、リーンスタートアップ、デザイン思考、プロトタイピング、AI、アジャイル開発、仮説検証、資金調達、ベンチャーキャピタルといった、スタートアップの事業開発に関わるプロセスや重要な概念を事例を通じて伝える。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'スタートアップに関する基本的な概念や多様なプロセス、アプローチの包括的な学修を通じて、将来のキャリアの選択肢のひとつとして起業を検討するために十分な基礎知識を習得することができる。加えて、起業の実現に向けて、将来のプランを描き、起業の疑似体験をするために必要な具体アクションを取るための能動的なマインドセットを獲得することを目指す。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
企業経営
後継科目
スタートアップ実践
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


-- 農業とデジタルテクノロジー
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-2-C1-0204-006',
  '農業とデジタルテクノロジー',
  '都会と繋がりながら地方で暮らすライフスタイルに関心を持つ人々が増えてきています。デジタルテクノロジーと情報通信網の進化により農村で起きつつある社会変化のひとつである「半農半X」をめぐる動きを理解することにより、自らがプレイヤーとなって農村で小さなスタートアップに取り組み、地域社会の活性化にも貢献するための基礎を学びます。',
  2026,
  '[{"name":"橋本 剛","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  'デジタルが起こす変化は都市だけにとどまらず農村でも起きており、学生自身の活躍のフィールドが地方にも広がっていることを事例を通して理解できるようになります。また、素材（課題）に満ちたフロンティアである地方の農村における実際の課題解決の事例を学ぶことにより、自ら地域の課題を発見し、解決する能力を身につけることを目指します。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目

後継科目

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


-- 交渉・合意形成概論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-2-C1-0204-007',
  '交渉・合意形成概論',
  '２人以上の人間や集団の間では、利害が完全に一致することはない。デートの場所の決定から国際紛争の解決に至るまで、合意を達成するには、何らかの交渉が必要となる。ビジネスの大部分は組織内外の利害関係者との交渉に絡んでおり、またほとんどの政策は利害団体の間の連続的交渉によって決定される。本科目は、交渉に関する科学的知見を分野横断的に提供するとともに、交渉力をつけるための実践的方策を提供する。',
  2026,
  '[{"name":"印南 一路","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '返報原則、依存関係など、交渉や合意形成に作用する基本的な概念やさまざまな交渉戦略・戦術を分野横断的に理解し、それらを日常生活やビジネス、政策実行の場面などで総合的に使うことによって、たとえ一見不利で困難な状況であったとしても、「関心利益の実現」という関係者間の相互の目的に沿った交渉を粘り強く展開できる能力が身につく。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
意思決定の能力開発
後継科目
交渉・合意形成演習

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


-- コンテンツ産業論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-2-C1-1030-001',
  'コンテンツ産業論',
  '知的創造産業、情報文化産業としてのコンテンツ産業とそのマネジメントを探求する。現代のコンテンツを代表するMANGA（マンガ、アニメ、ゲーム）から、SNS、メタバース、ユーザー制作コンテンツといった新しい動向についても総合的に理解を深める。講義の進行とともに、映画、音楽、ゲームのような伝統的な制作物から、クロスメディアと呼ばれる新しい複合創作へと転換しつつある現代のコンテンツ産業の全体像について理解を深める。',
  2026,
  '[{"name":"細井 浩一","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  'コンテンツ産業におけるビジネスプロセスとそのマネジメントを理解し、特にデジタルコンテンツの制作技術の革新や創作動向を学んだ上で、そのビジネスプロセスとビジネスモデルについて理解する。コンテンツ産業に関わる市場調査、企画立案、マーケティング、知財管理のマネジメントとプロデュースに携わる能力を獲得する。これらを通じて、文理を跨いだ様々な学問分野から得られる知識を編集し、現代のコンテンツ産業の世界を理解し伝える力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
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


-- ゲーム制作論基礎
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-2-C1-1030-002',
  'ゲーム制作論基礎',
  'この授業では、ゲーム会社におけるゲーム制作から販売までの一般的なモデルケースを取り上げる。商業ゲームにおける企画立案に至るまでの経緯やプレゼンテーションやシステム設計・ビジュアルサウンドのデザイン、UI/UXデザイン、シナリオライティングなどゲームに必要なプロセスを種目ごとに取り上げる。いくつかの授業ではゲストスピーカーをお呼びし、実際の仕事についてディスカッションを行う。',
  2026,
  '[{"name":"細井 浩一","role":"教授"},{"name":"平 信一","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '本授業を通して業界の市場調査や企画立案、ローカライズやPR方法などゲーム制作における必要な流れを理解することで、ゼロの状態からものを生み出す思考能力、企画を通すプレゼンテーションスキル、ユーザーに求められるデザインやシナリオの見極め方などの能力を身につける。総合芸術であるゲームの実際的な作られ方を理解することで、未来的なものづくりの基礎となる力を鍛える。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
日本のゲーム産業史
後継科目
ゲーム制作論応用
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


-- キャリアデザインⅡ（仕事理解）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C1-1030-001',
  'キャリアデザインⅡ（仕事理解）',
  '本科目では、自分のキャリアを主体的に展望し、デザインできるようになるために、働くことや働く環境などの仕事面に焦点を当てて講義を行う。産業や企業活動に関する基礎知識、企業が求める人材、業種・職種の特徴、働く意味や意義、多様なワークスタイルなど、働くことの現実について取り上げる。社会人から実際の話を聴く機会も設定し、学生が自分の興味、特性、希望などとつなげて納得のいく進路選択ができるようになることを目指す。',
  2026,
  '[{"name":"髙橋 南海子","role":"客員教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '産業社会や多様な働き方について理解を深め、将来に向けた主体的な態度を⾝につけることができるようになる。働くことの意味や現実について、社会人の生の声も聴きながら理解を深め、将来のキャリアに対する視野を広げることができる。自分の興味や特性、希望と社会や仕事の現実とを調整しながら、自分らしい職業選択とそのために必要な活動について理解し、将来に向けて行動を起こす能力を身につける。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
キャリアデザインⅠ（自己理解）
後継科目
キャリアデザインⅢ（就活実践）

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


-- キャリアデザインⅢ（就活実践）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C1-0204-002',
  'キャリアデザインⅢ（就活実践）',
  '本科目では、就職活動に主体的に取り組むために必要な知識、スキル、態度について取り上げる。近年の就職活動の状況、必要な準備や心構えについて説明した後、自己理解、業界・職種および企業理解、応募書類や面接における自己表現の方法などについて講義をする。課題への取り組みを通して体験的に理解が深まるように働きかけ、学生が卒業後に納得のいくキャリアを歩み始められることを目指す。',
  2026,
  '[{"name":"髙橋 南海子","role":"客員教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '就職活動を進めるために必要な知識、スキル、態度が身につき、自己分析や企業研究など、就職活動の準備に主体的に取り組めるようになる。特に、自己理解が進むことにより、関心のある業種、職種、企業が明確となり、自分らしい職業選択とそのために必要な活動について多角的に検討し、具体的な計画をたて、実践できるようになる。入社選考のための応募書類や採用面接についても詳細を理解し、そのプロセスにおいて自分を適切に表現できるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
キャリアデザインⅠ（自己理解）、キャリアデザインⅡ（仕事理解）
後継科目
なし

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


-- 人生設計とお金の管理
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C1-0204-003',
  '人生設計とお金の管理',
  '人生100年時代を迎え金融リテラシーの重要性は近年ますます高まっており、将来を見据えたライフプランニングや資産形成、若者を狙った詐欺に代表される金融トラブルを自ら回避するための判断力といった、私たちの生活に密接に関係する知識をＳＭＢＣグループ各社の現役社員がそれぞれの本業で培った経験を活かし講義で伝える。',
  2026,
  '[{"name":"田岡 恵","role":"教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["2Q","4Q"]',
  '本科目を通して、生涯を通じて適切に資金管理を行い、キャリアプランを作成するための知識やスキルを身につけることができる。これにより、自らの人生設計を具体化させ、目標に向かって進むための手段を見つけることが可能となるとともに、金融の仕組みや社会保障制度について理解することで、社会生活を円滑に進めるための知識を身につけ、自己の生活を安定させ、未来の生活設計をより具体的に描けるようになる。',
  '確認レポート 50% , 単位認定試験 50%',
  '前提科目
なし
後継科目
なし

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


-- ネットワーク産業論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C2-1200-004',
  'ネットワーク産業論',
  'AIやIoTを含むIT技術やネットワークの特性がもたらす政治経済への影響、産業構造の変化、企業戦略に強いる改革などを分析し、その社会的インパクトを正しく理解する。そのために、ネットワークに直接かかわりのある通信産業やIT産業に留めず、あらゆる産業、市場、社会体制、経済システムを対象に、どのような構造変化がもたらされているかを概説する。授業は講義だけでなく、ネットビジネスの最前線にいるゲストスピーカーの講演を織り交ぜ、実践的な知識を身につけた上でのその応用を目指す。',
  2026,
  '[{"name":"夏野 剛","role":"客員教授"}]',
  2,
  'ライブ映像科目',
  '選択',
  2,
  '["1-2Q"]',
  'インターネットとハード・ソフトのツールの普及がもたらした、商取引や市場の変化、国民生活の変化を理解する。また、ITを活用した経営手法に限定されない広い視野から体系的にネットワーク産業について概観し、IT革命によって経営の「何が変わった」のかをマクロ・ミクロの視点から俯瞰することで、その社会的意義・経済的意義・経営的意義について自分なりの意見を持てるようにする。同時に、インターネットとハード・ソフトのツールの普及がもたらした、商取引や市場の変化、国民生活の変化を理解する。',
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


-- デジタル画像創作論Ⅰ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C1-1030-005',
  'デジタル画像創作論Ⅰ',
  'デジタル社会において画像表現は進化し続け、エンタテインメントを始めビジネスの現場でも中心的役割を担っている。デジタル画像創作論の授業ではレクチャーを通して画像の各種技法と可視化による課題解決を学び、併せて商業的な役割を考察する。この授業では画像のビジネス的展開の代表であるデザインについて学修する。イラストとデザインの違い、イラストをはじめとしたコンテンツを活かすデザインの手法、伝わるデザインについて学ぶ。',
  2026,
  '[{"name":"有馬 トモユキ","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  'デジタル画像の展開手段であるデザインの技法について基礎から理解を深める。画像をより効果的に、多くのユーザーに届けるにはどのような手法があるか、マーケットによる手法の違いとはどのようなものかを学ぶ。さらに美しさ、魅力という一見抽象的な概念を分析し、自身でデザインを行うことにより学修を深める。これによりデザインの役割を正しく理解し、エンタテンメント産業など社会のさまざまな領域で活躍できるための能力を養う。',
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


-- デジタル画像創作論Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C1-0204-006',
  'デジタル画像創作論Ⅱ',
  'デジタル社会において画像表現は進化し続け、エンタテインメントを始めビジネスの現場でも中心的役割を担っている。デジタル画像創作論の授業では具体的に手を動かして画像の各種技法と可視化による課題解決を身につけ、併せて商業的な役割を考察する。この授業ではキャラクター画像について、デフォルメからリアル頭身までデザインのバリエーションを知り、自分の技術や嗜好に合ったスタイルを模索することで、基本から学修する。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  '人物を中心としたデジタル画像の技法について基礎から理解を深め、自身でキャラクターを創造できるようになる。さらに、そのキャラクター画像にどのようなユーザー設定をするか、どのような展開の可能性を持たせたいか、そのためにはどういった要素が必要かを考察し、エンタテンメント産業など社会のさまざまな領域で活躍できるための能力を養う。この授業ではキャラクターデザインの基礎とそのバリエーションを知る。',
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


-- デジタル画像創作論Ⅲ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C1-0204-007',
  'デジタル画像創作論Ⅲ',
  'デジタル社会において画像表現は進化し続け、エンタテインメントを始めとしたビジネスの現場でも中心的役割を担っている。デジタル画像創作論の授業では学生自身が具体的に手を動かして身体感覚と思考を融合させる学修を行って画像の各種技法と可視化による課題解決を身につけ、併せて商業的な役割を考察する。この授業では人物画の基本的な制作を学び、コミックにおける人物画について考察する。併せて表現上のレクチャーを行う。',
  2026,
  '[{"name":"ディープブリザード","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  '現代におけるデジタル画像の役割について理解し、手を使い、画像を制作しつつ学ぶことによりそのプロセスと価値を知る。さらに、画像とそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、将来的には、いまや日本の基幹産業であるクリエイティブ産業を支え、さまざまな形で活躍する人材となる。本授業では人物を題材に、立体を意識して様々な角度やポーズで描画を通じ、人物画像の表現可能性についての理解を深める。',
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


-- 3Dモデリング技術演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-1200-016',
  '3Dモデリング技術演習',
  'Blenderを活用した3Dモデリング技術の基本を身につけた上で、キャラクターやオブジェクトの制作に挑戦し、独自の作品を創造する力を養成する。プリミティブモデリングからポリゴン・カーブ・スカルプトモデリング、さらにライティングやカメラ設定を学び、1つの絵画作品として完成させる実践力が身につく過程を体験する。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '自身の思い描くイメージを、Blenderを用いて画像にする事ができるようになる。3Dモデリング技術を実践することで、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。',
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


-- ジェネラティブアート演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-1200-017',
  'ジェネラティブアート演習',
  'Processingを用いたビジュアルプログラミングを学ぶ。基本的な描画方法から始め、色の表現やインタラクティブな要素を取り入れる技術を修得する。アニメーション制作と物理法則の適用を通じて、コードが生み出すダイナミズムを実感する。加えて、画像や音、3Dといった要素を組み合わせて表現力を高める。最終課題に向けた制作活動では、自らのアイデアを形にし、それを他者に伝えるためのプレゼンテーション能力も養う。',
  2026,
  '[{"name":"江渡 浩一郎","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'Processingを通じたビジュアルプログラミングの基礎を理解し、視覚表現による意図の伝達を行えるようにする。自身の作品を作り出し、プレゼンテーションでアイデアを他者に伝達する能力を養う。さらに、多角的な視点でビジュアル表現を分析し、デジタルツールを活用した課題解決と表現力を向上させる。',
  '提出物100％',
  '前提科目
ビジュアルプログラミング、Webアプリケーション開発1
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


-- インターネットのしくみ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-0034-018',
  'インターネットのしくみ',
  'インターネットを支える技術を演習・ゼミ形式で学ぶ。インターネットのしくみゼミIでは、インターネット基盤技術を構成する最重要要素である、IPアドレスとドメイン名、両者を紐づけるDNSについて幅広く学修する。',
  2026,
  '[{"name":"岡田 雅之","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'IPアドレスやドメイン名の管理運営とDNSの関係を理解し、インターネットの仕組みを大まかに理解できる。
簡易なコマンドを使って、インターネットの運用状況の調査が可能となる。',
  '確認テスト40%、確認レポート30%、最終レポート30%',
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


-- Javaプログラミング演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-0034-019',
  'Javaプログラミング演習',
  'オブジェクト指向言語Javaを利用したプログラミングを学ぶ。Javaが持つ基本的な概念や、Javaの持つ繰り返し、データ構造などの基本的な文法、またJavaが持つ標準APIなどを学ぶだけではなく、最新のJavaの機能のStreamなどの高度な利用方法も学ぶ。オブジェクト指向プログラミングの要素を学んだ後ビルドツールや単体テスト、IDEやバージョン管理法も知り、JavaでのWebアプリケーションとデータベースの連携までを学ぶ。',
  2026,
  '[{"name":"吉村 総一郎","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '特にエンタープライズシステムに関わる社会人として利用する可能性のあるJavaを使ったアプリケーション開発をするための必要な知識と初歩的な技術を身につけて、JavaによるWebアプリケーションシステムの開発に取り組めるようになる。',
  '制作物提出100%',
  '前提科目
Webアプリケーション開発1
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


-- Webセキュリティ演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-0034-020',
  'Webセキュリティ演習',
  '比較的身近であり重要なメディアであるWebのセキュリティを題材に、具体的な対象を情報セキュリティに共通する観点である、目的（機密性、完全性、可用性）と手段（認証・認可・監査）、そしてシステム的視点（経済・人間・法律とのつながり）と攻撃者の視点から理解する。各回において、①実際に起こった重大インシデントの紹介とその被害の影響②実験環境でのインシデントの体験③対策の概要の理解④対策の限界を取り上げる。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'Webのセキュリティにおける代表的な欠陥について、目的（機密性、完全性、可用性）と手段（認証・認可・監査）、そしてシステム的視点（経済・人間・法律とのつながり）理解し、列挙できるようになる。また、その影響について説明できるようになる。さらに、それらの欠陥に対する攻撃を再現し、対策を講じることができるようになる。',
  '提出物（各回の体験のスクリーンショットなど）100%',
  '前提科目
Webアプリケーション開発3
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


-- デジタルイラスト演習基礎
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-0034-021',
  'デジタルイラスト演習基礎',
  'CLIP STUDIO・Photoshopを使ったプロのイラスト制作に必要な
・基礎的技術力・審美眼・作品の抽象化と再構築能力・アルゴリズムの読み解き
・感覚の言語化・歴史的アート・エンタメ文脈の理解・現代の消費欲求とニーズの理解
を学ぶ。',
  2026,
  '[{"name":"濵田 順教","role":"客員講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '個々の目標（あの企業に入りたい/SNSでバズりたいetc）を明確に掲げ、アート・エンタメの文脈的現在地を理解し、感性を自覚的にコントロールするために基礎的なスキルと構築能力を使い（現時点で）自分史上最高のイラストを制作する。これらのデジタルイラストレーション技術を実践することで、デジタルツールを用いて情報収集、表現、コミュニケーションする力を獲得することを目標にする。',
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


-- AIアルゴリズム実践
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-0034-022',
  'AIアルゴリズム実践',
  '現在、国内外でさまざまな機械学習コンペティションが開催されており、公開されているさまざまなノートブックは、さまざまなデータ分析課題を解く上で大きなヒントを与えてくれる。そこでこの授業では、機械学習コンペティションを通して実践的なデータ分析技術を学ぶ。',
  2026,
  '[{"name":"葛木 美紀","role":"客員講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '機械学習コンペティションに参加して，実データの取り扱い，特に実践的なデータ整形法を身につける．またスコア改善のための特徴量の選択や作成，パラメータのチューニング法などの機械学習プロジェクトの実践的な手順を身につける。',
  '課題の提出状況と結果',
  '前提科目
機械学習概論, Pythonプログラミング
後継科目
データサイエンス実践Ⅱ（モデリング）, マーケティング × データサイエンス
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


-- マーケティング × データサイエンス
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-0034-024',
  'マーケティング × データサイエンス',
  'マーケティングはいま統計学が積極的に活用されている分野の一つである。特にアンケート解析や、口コミ分析といった自然言語データ解析はマーケティングサイエンス領域ではとても重要になっている。
本授業では、そのようなマーケティングサイエンスの実践的な知識を学び、最先端のデジタル・マーケティングで何が行われているか総体を理解し、自らも解析業務に携われるようになる基盤を構築する。',
  2026,
  '[{"name":"千葉 尚志","role":"准教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'デジタル・シフトにより企業活動が大規模な情報システムに制御・統括されている現状は、データ量が指数関数的に増大していき、その解析処理と意味合いの抽出がマーケティングでも必須のものとなる。このような潮流の下で、如何に効果効率的に情報を収集処理していくか、課題解決に資するかたちで収集した情報を分析し、そこから意味合いを適切に読み解く術を身につける。得られた分析結果を、課題解決の文脈から、どう表わしていくのか、数理的な結論を属人的な課題解決領域の文脈に活用し説明するロジカルシンキング＋コミュニケーションの力を養い、マーケティングサイエンスが課題解決に必須となっている現状に対処するための種々のスキルセットを学修する。',
  'レポート50%，発表50%',
  '前提科目
データサイエンス概論、統計学入門
後継科目
データサイエンス実践Ⅱ（モデリング）, データサイエンス実践Ⅲ（時系列）

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


-- 数理科学発展演習Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C3-1200-009',
  '数理科学発展演習Ⅱ',
  'この授業では「集合と論理」「数理構造の発見と活用」「距離空間」に対応した演習を行う。数理系学問の理解を深めるためには、論理的な証明を記述する能力が必要不可欠である。各回の演習では、数学的命題の証明をどのように記述するかを学ぶ。',
  2026,
  '[{"name":"湯山 孝雄","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '本授業を通じて、「集合と論理」「数理構造の発見と活用」「距離空間」に対応した演習問題を解くことにより、授業で学んだ内容を深く理解できるようになる。自らの力で解けなかったとしても、解法を知ることを通じて学修に必要な素養を身につけ、基本的な計算力を養うことを目標とする。',
  'レポート100％',
  '前提科目
集合と論理, 数理構造の発見と活用, 距離空間
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


-- Inter-universal Teichmüller Theory 2（宇宙際タイヒミューラー理論 2）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C3-1200-010',
  'Inter-universal Teichmüller Theory 2（宇宙際タイヒミューラー理論 2）',
  ' [ALGEBRA AND GEOMETRY FOR NUMBER THEORY]
IUT 2 provides more information on basic number theory, commutative algebra, geometry and elliptic curves.

(日本語)
[数論のための代数と幾何]
本授業では、基本的な、数論、可換代数、幾何学、および楕円曲線の概念に関して、IUT1よりもさらに詳しい内容を学ぶ。
（なお、この授業は英語で開講する。）',
  2026,
  '[{"name":"Ivan Fesenko","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'IUT2 will present to the students some key notions of commutative algebra and algebraic geometry such as curves. By the end of the module the students should 
be familiar with and understand a range of concepts of the subject; be able to understand important results from the theories; be able to solve unseen problems using the knowledge and skills acquired. 

(日本語)
IUT2（本授業）では、学生に可換代数と代数幾何においていくつかの鍵となる概念、例えば曲線などを提供する。
本授業を修得した学生は、主題の様々な概念を理解し、馴染み、理論からの重要な結果を理解し、獲得した知識とスキルを使用して未知の問題を解決することができる。',
  'Report70%, Group Work30%',
  '前提科目
Inter-universal Teichmüller Theory 1（宇宙際タイヒミューラー理論 1）
後継科目
Inter-universal Teichmüller Theory 3（宇宙際タイヒミューラー理論 3）,Inter-universal Teichmüller Theory 4（宇宙際タイヒミューラー理論 4）

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


-- Inter-universal Teichmüller Theory 3（宇宙際タイヒミューラー理論 3）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'MTH-2-C3-0034-011',
  'Inter-universal Teichmüller Theory 3（宇宙際タイヒミューラー理論 3）',
  ' [ALGEBRAIC NUMBER THEORY]
IUT 3 presents fundamental features of Galois theory and algebraic number theory. This approach leads to understanding of certain arithmetical properties of numbers (in particular, integers) from a new point of view. For example, various diophantine problems (eg sums of squares) can be interpreted in terms of certain algebraic relations and then successfully solved. IUT3 discusses some of the central results in the theory such as Galois groups, integrality, the structure of their rings of integers, ideal classes and unique factorisation, and applications. 

(日本語)
[数論幾何]
IUT3（本授業）では、ガロア理論と代数的整数論の基本的な特徴を紹介する。数（特に整数）のある算術的性質を新しい視点から理解できる。例えば、様々なディオファントス問題（例えば、平方数の和）は、特定の代数的な関係性の観点から解釈でき、解決可能である。また、ガロア群、整数性、整数環の構造、イデアル類と一意分解、および応用など、いくつかの中心的な結果について議論する。
（なお、この授業は英語で開講する。）',
  2026,
  '[{"name":"Ivan Fesenko","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'The aims of IUT3 are to provide an introduction to the main strands of Galois theory and algebraic number theory and to teach concepts and techniques used in number theory.
By the end of the module, students should be able to understand a wide range of concepts in algebraic number theory, have a knowledge of the principal theorems and their proofs, and appreciate the role of symmetries in number theory. 

(日本語)
IUT3（本授業）では、ガロア理論と代数的整数論の主要な概念への導入を行い、数論で使用される概念と技術を教える。
本授業を修了した学生は、代数的整数論の広範な概念を理解し、主要な定理とその証明についての知識を持ち、数論における対称性の役割を評価することができる。',
  'Report70%, Group Work30%',
  '前提科目
Inter-universal Teichmüller Theory 1（宇宙際タイヒミューラー理論 1）, Inter-universal Teichmüller Theory 2（宇宙際タイヒミューラー理論 2）
後継科目
Inter-universal Teichmüller Theory 4（宇宙際タイヒミューラー理論 4）

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


-- 政治を超える哲学Ⅱ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C3-1200-009',
  '政治を超える哲学Ⅱ',
  '現代世界は政治に満たされている。哲学も政治の道具となっている。しかし、そもそも哲学とは「政治の外」を考える営みであり、また人間を政治から自由にする手段でもあった。
本講義では、「政治を超える哲学Ⅰ」を踏まえたうえで、まず言語ゲーム論を学び、つぎにルソーとドストエフスキーという2人の古典を読みながら、「政治」と「その外部」について考える。学生は政治思想の基礎概念（一般意志）やロマン主義文学の基礎的な知識も学ぶことができる。
授業は基本的に講義形式だが、各回必ず質疑応答時間を取る。積極的な質疑は評価の対象となる。また学生発表を組み込んだ回も入れる（発表内容は別途授業内で指示する）。発表も評価点に加わる。なお、紹介する文献、学生発表の対象とする回などは授業の進行に応じて変更される可能性がある。',
  2026,
  '[{"name":"東 浩紀","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '本授業を通じて、学生は、20世紀以降の哲学の基礎的な語彙と考えかたを身につけることによって、現代社会の分析をより精緻にできるようになる。人文系の知識を活かしてより総合的に将来について考えることができるようになる。',
  'レポート60%、発表・発言40%',
  '前提科目
政治を超える哲学Ⅰ
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


-- 社会で活きる囲碁論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C3-1200-010',
  '社会で活きる囲碁論',
  '囲碁の理念から歴史、エンタテインメントとの関係性、最新のAIと囲碁の関係について学び、文化としての囲碁を深く理解する。また、勝敗の概念、大局観など囲碁の存続の背後にある普遍的な価値について学ぶ。実際に触れる対局やプロの対局の観戦は、それらの価値観や文化論により深い理解をもたらすであろう。さらに、クリエイターや経済人など異なった知見を持つゲストとの対話を通じて多角的な視野から囲碁を学ぶ演習授業である。',
  2026,
  '[{"name":"藤澤 一就","role":"客員教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '囲碁を中心とした文化に習熟することで、ワールドワイドに通用する教養を身につけた社会人になる。また、囲碁の最も重要な思想である大局観を学ぶことで、ロジカルな問題解決能力と、短期的な状況に揺るがされることのない優れた決定を下すことができる思考法を身につける。将来的には、囲碁の思想を人生やビジネスに応用し、更なる思考の深化や視野の拡張を可能にして、起業などのチャレンジにも生かしてゆくことを目指す。',
  '各回のミニレポートによる理解度（30％）と、講義中の発言（20％　チャット含む）期末のレポート（50％）により採点する',
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


-- 心理学実験・調査演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C3-1200-011',
  '心理学実験・調査演習',
  '科学的心理学では、行動を通して人の心の働きを推測することを目指す。そのための研究手法として、実験や調査がある。本授業では、心理学実験や調査を自分たちで実施して、得られたデータを分析しレポートにまとめることを体験する。そのためには、データの分析方法、レポートの作成方法の基本も学ぶ必要がある。これらの学びと体験を通して、心理データの収集の実際を知り、データから結論を導くスキルを習得する。',
  2026,
  '[{"name":"積山 薫","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'この授業を通して、科学的な心理学の基本的な研究方法を理解し、書物の知識がそのような方法を通して得られたものであることが理解できるようになる。それにより、自分の言葉で心に関する現象を説明できるようになる。実験や調査を実施する上でのパソコンの操作などを通じて、情報技術の学問的応用の実際を知ることができる。グループ討議を通して、コミュニケーション能力を身につけることができる。',
  'レポート・成果物100%（知覚実験レポート33%、認知実験レポート34%、質問紙調査レポート33%）',
  '前提科目
心理学
後継科目
ゼミ（心の科学）

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


-- WEBコミック演習
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C3-0034-012',
  'WEBコミック演習',
  '現在、まんがは紙のまんがに加え、縦スクロールまんがなどweb上のまんがの形式がいくつか存在し、まんが表現はweb上で日々変化している。まんがの表現方法は器となるデバイスによって変化するため、この演習では、まんがの作り方で学んだ理論を実践し、紙のまんが作品を作り、webまんがへ変換する。添削を交え「見開きのまんが」を「縦スクロール」に書き換える（アダプテーションする）実験を実際に行い 、また、web１頁まんが、１頁イラストまんがなどのwebの新しいまんが表現も実践、研究する。',
  2026,
  '[{"name":"浅野 龍哉","role":"客員講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '演習を通して、視覚表現の演出方法を理論だけなく実践経験として身につける。また、単なる「描き方」ではなく「表現」が器となるデバイス間を移動した時、ナラティブにどのような変化が生じるか、その変化を仮説し対応できる思考力を養う。',
  '提出された課題',
  '前提科目
まんが絵コンテから学ぶ視覚表現
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


-- こころの成り立ちとメンタルヘルス
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C3-0034-013',
  'こころの成り立ちとメンタルヘルス',
  '多様化、複雑化する現代社会では、さまざまな形でメンタルヘルスの問題が生じており、社会的リスク要因となっている。この授業では精神分析的なこころの発達理論を概説し、セルフチェック、グループ・ディスカッション、自身の発達の振り返りを通して、健康なこころの成長発達の過程を体験的に理解する。さらに健康な発達が阻害されたときに、どのような問題が発生し、個人、家族、社会集団にどう現れるかを知り、対処と解決方法を考える。',
  2026,
  '[{"name":"濱田 庸子","role":"客員教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本授業の履修により、学生は自分自身の精神内界を振り返る内省的思考を身につけることができ、セルフチェック課題やグループ・ディスカッションを通して、自己理解および他者理解を深めることができる。それによって、メンタルヘルスの諸問題について複合的に理解する視点を身につけることができ、コミュニケーション能力も向上し、複雑な社会を生き抜く力を強められる。',
  'レポート70％・グループワーク30％',
  '前提科目
心理学
後継科目
ゼミ（心の科学）
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


-- ウェルビーイングをデザインする
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'HUM-2-C3-0034-014',
  'ウェルビーイングをデザインする',
  '“妊娠前の健康管理”として成立したプレコンセプションケアは、現在では若い世代がリプロダクティブ・ウェルビーイングを得ることも目的に加わっている。将来、妊娠・出産や子ども持つ/持たないを一度は真剣に考え、そのうえで真に健康に生きるために必要なこと、またそれを実践していくことの重要性やエッセンスを学ぶ演習授業である。',
  2026,
  '[{"name":"三戸 麻子","role":"客員教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '社会で活躍してゆくための第一条件として健康な心と身体と社会とのつながりを維持してゆく。さらに、重要な社会活動のひとつ、次世代を育む妊娠・出産について男女ともに学び、よりよいライフプランの選択を行う。',
  '各回のミニレポートによる理解度（30％）と、講義中の発言（20％　チャット含む）期末のレポート（50％）により採点する',
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


-- 社会学Ⅲ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C3-1200-010',
  '社会学Ⅲ',
  '「社会を変える」「社会を変えなければならない」
誰もがこのような言葉を一度は聞いたことがあるだろう。あるいは、「社会を変えたい」と思っている人も多くいるかもしれない。
本当に「社会を変えたい」と思ったら、一度立ち止まって「社会を変える/社会が変わるとはどういうことか？」ということについて真剣に考える必要がある。この授業では、「社会を変える/社会が変わる」ということについて多様な観点から検討していく。',
  2026,
  '[{"name":"谷口 祐人","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'この授業を通じて期待することは、「社会を変える」「社会が変わる」ということについて多角的に検討することができるようになることである。社会を変えるための方法も、社会が変わりゆくありようも実際には非常に多様である。この授業を通じて、社会を変えるための実用的なスキル以上に、視点の豊かさを育んでいってもらいたい。',
  'レポート・成果物100％（毎回の授業後のレポート20％・最終レポート80％）',
  '前提科目
社会学Ⅱ
後継科目
ゼミ（社会学）

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


-- 現代スポーツ構造分析
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C3-1200-011',
  '現代スポーツ構造分析',
  '現代社会は、ギリシャのポリス制の頃に似てきた。ギリシャでは労働は奴隷に任せ、市民はコロシアムで演劇や格闘技を楽しんでいた。現代社会はコンピュータに全てを委ねてスポーツやフェスをメディアと実物で楽しむ社会になりつつある。スポーツは、その存在意義が過去にないほどに増大しつつある。本講では現代におけるスポーツの現在形をいろいろな角度からフィールドワークしてスポーツの今日の全体像を把握することを目的とした内容である。',
  2026,
  '[{"name":"戸塚 隆","role":"客員講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'ビジネス、平和、メディアなど、多様な視点からスポーツを理解できるようになる。また、それによって、将来の自身のスポーツとの関わり方について、各領域の関係性を把握しながら、具体的に描けるようになる。',
  '各回の感想レポート（50%）、グループディスカッションにおける発表内容（50%）',
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


-- SFから考える未来ビジョン
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C3-1200-012',
  'SFから考える未来ビジョン',
  'サイエンスフィクション（SF）が近年ビジネス業界で注目されています。様々な人を集め一緒にSFを作ることで、どんな未来が来るのか議論したり、やりたいことを新しく考えたりするメソッドが様々な現場で取り入れられているのです。本授業では、参加型ワークを通してこのメソッドを体験して頂き、自分自身のキャリアやビジネスをこれまでにない斬新なものとして打ち出していくためのコツを教えます。',
  2026,
  '[{"name":"宮本 道人","role":"客員講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '技術がもたらす未来社会の様々な可能性を具体的に想像し、自ら未来を先導するための方法論を学びます。古びた未来像にとらわれず、これまでにないビジョンを作り出し、「今なにをすればその未来に辿り着けるのか」のプロセスを設計する能力を身につけます。また、これらの方法論、能力を他者と共有し、社会を変革していく力を育てます。',
  'グループワークにおける発言／記述40％、発表用資料／発表40％、講義中のミニワークにおける発言／記述20%',
  '前提科目
なし
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


-- 現代社会理論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C3-0034-013',
  '現代社会理論',
  '経済学や政治学ではまず「個人」を想定して、その選択と行為の集まりとして社会を考える。しかし社会学には、そうした考え方をとらない理論の蓄積がある。この授業では学生と教員のオンラインでの双方向対話を重視しながら、そのような社会学の諸理論を学び、その発想法を修得させる。',
  2026,
  '[{"name":"小熊 英二","role":"特別招聘教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  'この授業の目標は、主流の経済学や政治学とは異なる考え方を修得し、その理論的応用ができるようになることである。さらに、それを用いて事象を分析し、批判的に検討し、未来像を打ち立てる力を身につけることである。その習得は、技術の応用やビジネスの新しい展開を考えるうえでも、有益なスキルとなるだろう。',
  '積極的な授業参加（50％）、期末レポート（50％）',
  '前提科目
社会学Ⅱ
後継科目


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


-- 未来社会デザイン論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C3-0034-014',
  '未来社会デザイン論',
  '「石器時代が終わったのは石がなくなったからではない」（鉄器などより良いものが創られたからだ）――同様に石油時代も石油の枯渇を待たずに終わるだろう。この言葉は、時代を開くのが資源の「有限性」でなく人間の「創造性」であることを示唆している。イノベーションがすべてを解決するというナイーブな技術信仰ではない。だが21世紀を生きる世代としての想像力を、無意識のうちに20世紀の常識で縛ってはいないか？本講はそんな「心の脱衣」のトレーニングである。',
  2026,
  '[{"name":"竹村 眞一","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '「共創地球論」「人新生の人類学」の既習者を対象に、その素養をさらに今後の社会デザインに活かしてゆくために、受講生による企画立案と発表を軸にWS形式で進める。講師による具体的な事例紹介（時にはその実践者をゲスト講師として招聘）を受けて、それをさらに進化させる、或いはそれに拮抗しうるような社会デザインや商品を学生がグループ討議を通じて提案。斬新な発想を事業化してきた起業家も最終審査会に招き、学生のアイデアの「社会化」につなげる。',
  '発表・発言　50％／グループワーク　50％',
  '前提科目
共創地球論、人新世の人類学
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


-- 音楽と社会
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C3-0034-015',
  '音楽と社会',
  '音楽はどのように社会と切り結ぶのか。音楽から我々は何を得ているのか。指揮者／エル・システマジャパン音楽監督としての実体験も踏まえつつ、主にクラシック音楽の分野において、いま参照すべき様々な事例を紹介してゆく。ゲストを交えた対談も適宜行う。講義を通じて、音楽という営みを外に開いてゆきながら、受講者それぞれに「橋」としての音楽の可能性を見出してほしい。',
  2026,
  '[{"name":"木許 裕介","role":"客員講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '音楽を外へ開いていく方法を身につける。受講者それぞれが「音楽と社会」について関心を持ち、各人の生において音楽とどのように関わっていくのか、そして今後の文化芸術のあり方にどのような貢献ができるか、自分なりに考えられるようになる。講義を通して紹介される膨大な数の文献や作品（音楽分野に限らない）に触れることで、複数言語に及ぶ読解能力およびさまざまな作品を鑑賞・分析するための方法も得る。',
  '講義終盤の「学生による発表」を中心として、講義全体を通じた貢献度によって評価する。',
  '前提科目
なし
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


-- 子どもと地域づくり
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C3-0034-016',
  '子どもと地域づくり',
  '子どもは、地域の将来を担う存在である。子どもという次世代を地域で育む活動として、食を通じたシビックプライドの育成、新しいデザインによる地域の伝統工芸品への愛着育成、防災の取り組みなどがある。
 これらの取り組みは、狭義には子どもの育成であるが、広義には地域づくりである。本授業における「地域づくり」とは、地域社会課題解決に向けた取り組み、地域を担う人の育成や地域の価値創造である。本授業では、さまざまな事例を手がかりに、議論を行い、子どもを通じて地域づくりへの理解を深める。必要に応じ実践者をゲストとして招き、対談、ヒアリングなどの多様な方法で実践の本質を学ぶ。本授業が対象にする子どもは、小学校中学年以下である。',
  2026,
  '[{"name":"中村 圭子","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '学修を通じて、子どもという次世代の育成を通じて、地域課題を理解し、解決をめざしてどのように実践がなされているかが理解できるようになる。地域では、多様な角度で次世代を担う子どもの育成がされていることが、理解できるようになる。また、地域における子ども世代のひとづくりにおいて、自らが考え活躍するイメージが具体的に持てるようになる。',
  'レポート・成果物20％、発表・発言40％。グループワーク40％',
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


-- コラボレーション・クリエイティブ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'SOC-2-C3-0034-017',
  'コラボレーション・クリエイティブ',
  '世の中を驚かせるアイデアを生み出し、それをかたちにするためにはどうすればよいでしょうか。
 そのためには、ひとりひとりが「発想する力」と「共創する力」を身につけ、
 自分なりのアイデアを生み出す方法論とコラボレーションする方法論を作り出すことが必要です。
 本授業では、すべての人がもっている創造力を掘り起こしながら、
 アイデアを生み出す技術とコラボレーションする技術を体系的に学び、実践活動につなげます。
 ※グループワーク前提の授業になります。基本的に毎回異なるグループを編成しグループワークをおこないます。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '社会に出ると教科書は自分で作るものです。
 本授業を通じて、アイデアを生み出す技術とコラボレーションする技術を体系的に学び、
 自分なりの発想と共創の実践的な教科書を作りあげるのがゴールです。
 身につけてもすぐに忘れてしまう一過性のスキル装着を超えた体質づくりをめざします。',
  'レポート50％、発表50％',
  '前提科目
なし
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


-- 現代資本主義論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'ECON-2-C3-0034-008',
  '現代資本主義論',
  'この演習では、マルクス経済学の手法を用いて、現代資本主義の問題について議論していく。気候変動、AI、戦争、インフレなどの問題を扱う文献を読み、議論していく。「新自由主義」「認知資本主義」「レント資本主義」についてマルクスの分析に照らしながら、考察していく。その際には、マルクスの恐慌論、利潤率の傾向的低下、転形問題などが現代資本主義の問題点を分析するうえで、どれほどの妥当性を持つかについても検討していく。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本演習を通じて、具体的には以下の能力を身につけることを到達目標とする。まず、現代資本主義の特性を理解することができるようになること。そのうえで、マルクスの時代との現代の資本主義の違いを説明することができるようになること。さらに、現代資本主義の分析をマルクス経済学の方法を用いてできること。最後に、資本主義の問題点を克服するためのオルタナティブを提案できるようになることも望まれる。',
  '期末レポート50％・発表・発言30％・グループワーク20％',
  '前提科目
マルクス経済学
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


-- メディアで検証する未来の作り方
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-2-C3-1200-003',
  'メディアで検証する未来の作り方',
  '本科目では、IT分野から世界を変えたイノベーションを取り上げる。成功事例・失敗事例の簡略化されたストーリーで紹介される製品やサービスが、実際は、その時代のライバルや環境との関係の中で生み出された事実を理解させる。そのために、当時のコンピューター専門誌を中心にしたメディアを検証しながら、失敗のすぐ横にあったチャンスやアイデアを発掘。幅広い視点でテクノロジーやマーケットを見る力を養う。',
  2026,
  '[{"name":"遠藤 諭","role":"客員教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '本科目では、IT分野におけるイノベーションの実際を学ぶ。イノベーションの本質は、個々の新技術それ自体にあるのではない。テクノロジー進化と市場ニーズの交わるところに生まれることを理解し論ずることができるようになる。とくに今日我々が日々使っているネットやスマートデバイス、日本企業によるイノベーションに焦点を当て、イノベーションに必要なことを肌感で理解する。',
  '個人発表70％・グループワーク30％',
  '前提科目
IT産業史
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


-- アニメのクオリティー管理と商品性
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-2-C3-1200-004',
  'アニメのクオリティー管理と商品性',
  '本科目では「クオリティー（品質）」の基礎知識について、アニメづくりを題材に教える。アニメ制作現場における品質保持方法を事例に、あらゆる業界に共通する考え方の修得をめざす。実社会において品質管理には標準の国際規格が存在し、アニメも近い考え方で製品化されている。工業界の「クオリティー・コントロール」も参照しつつ、「製品としてのアニメ」を理解することで、「ものづくり」の品質を向上可能な能力を高める。',
  2026,
  '[{"name":"氷川 竜介","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '本科目では「クオリティー」の本質やその実現手段の基礎について学ぶ。アニメーションの制作現場は専門部署に分かれ、各工程で品質の基準が定義されている。このプロジェクト推進と品質管理の考え方は、製造業で適用される品質管理の国際標準ISO9001と類似しており、これらを学ぶことで、学生が品質管理の基礎を必要に応じて説明し、問題発生時も原因や改善手法を論じられるスキルを修得できることを目標とする。',
  '個人発表70％・グループワーク30％',
  '前提科目
アニメ産業史
後継科目
アニメ産業に関わる仕事、ゼミ（アニメ作品の分析メソッド）
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


-- マンガの企画立案とプロデュース論
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-2-C3-0034-005',
  'マンガの企画立案とプロデュース論',
  '本授業において教員は「マンガの企画の立て方」を学ぶことで、ビジネス視点を取り入れた実際の「売れる企画を立てられるスキル」を学生に理解させる。グループワークを通じて他者とのコミュニケーション能力を向上し、自己の個性を活かした好きをヒットにつなげる手法を指導します。演習を通して自己表現力の向上とマーケットに合ったアプローチを習得し、実践的なマンガ企画を発表する。これにより、学生がモノづくりに必要な型や観察力、ビジネスレベルで通用する企画のブラッシュアップ方法を養うことを目指す。',
  2026,
  '[{"name":"佐渡島 庸平","role":"客員講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '本授業を通して学生は、ヒットを見出す観察力やビジネスレベルまで持ち上げる思考能力、そして流行を生み出すための分析技術を身につける。マンガの型や企画の立て方を学ぶことで創造力を育み、グループワークを通じてコミュニケーション能力を向上させることでチームワーク力を養う。また、自己の個性を活かし、好きをヒットにつなげる方法を学び、発表を通して自己表現力を高める。',
  '個人発表70％・グループワーク30％',
  '前提科目
マンガ産業史
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


-- 文化資源とメタバース
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-2-C3-1200-006',
  '文化資源とメタバース',
  '本演習では、メタバースと呼ばれるようになった仮想空間の起源と発展の経緯、現状の動向、そしてそれが本質として有しているコアな可能性を取り上げる。特に、伝統芸能からポップカルチャーにつながる文化資源を活用するメタバースの現状を詳細に理解していく。演習を通じて、メタバースの基本的な仕組みとその応用可能性を解説し、企画立案することができるような能力を養うことを目的とする。',
  2026,
  '[{"name":"細井 浩一","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  'メタバースの起源から現状、その可能性を学び、デジタルツールを用いた情報収集能力、表現能力、コミュニケーション能力を活かし、メタバースを主題にした企画立案ができるようになる。仮想空間における学術研究やビジネス、特に文化資源の活用について理解を深めるとともに、自身のアイデアを具体的な形にすることにより、メタバース上での課題解決のためのプロセスを学ぶ。',
  'グループワーク100％',
  '前提科目
コンテンツ産業論
後継科目
ゼミ（文化資源アーカイブとメタバース）

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


-- 文化資源のデジタルアーカイブ
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'DIGI-2-C3-0034-007',
  '文化資源のデジタルアーカイブ',
  '本演習では、文化資源を対象としたデジタルアーカイブの起源と発展の経緯、現状の動向について取り上げる。まず、文化資源に関わるデータベースやアーカイブの実践事例について学んだ上で、特にMANGAと称される現代のポップカルチャーのデジタルアーカイブがどのように構築されているかについて理解させる。演習を通じて、デジタルアーカイブの基本的な仕組みとその応用可能性を解説し、企画立案することができるような能力を養う。',
  2026,
  '[{"name":"細井 浩一","role":"教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["3-4Q"]',
  '文化資源アーカイブの起源、発展、現状、将来性を説明することができると同時に、情報技術を駆使して文化資源をデジタルアーカイブとして構築し、その可能性を探求することができる力を身につける。特に現代ポップカルチャーとしてのマンガのデジタルアーカイブ構築について学び、その過程で得られた知識や技術を使って自分自身で文化資源のデジタルアーカイブを企画立案する能力も身につける。',
  'グループワーク100％',
  '前提科目
コンテンツ産業論
後継科目
ゼミ（文化資源アーカイブとメタバース）

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


-- 英語コミュニケーションⅢ（プレゼンテーション）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C3-1234-008',
  '英語コミュニケーションⅢ（プレゼンテーション）',
  '本科目では、各回のトピックについて学生自身が調べた内容をもとにスピーチを組み立て発表してもらう。また、プレゼンテーションをおこなう際のアイコンタクト、声の大きさや出し方、ジェスチャー、ビジュアルエイドについても学び、英語でプレゼンテーションをおこなう場合に必要な包括的な表現を体得する。また、学生はお互いのプレゼンテーションを聴き、内容についてフィードバックできるように指導する。',
  2026,
  '[{"name":"鈴木 栄","role":"客員教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q","3-4Q"]',
  '様々なトピックについてリサーチをおこない、デジタルツールを用いて情報取集したことを基に、英語で説明および発表が個々に、あるいはグループでできることを目標とする。演習での実践を通じて、プレゼンテーションをおこなう際のアイコンタクト、声の大きさや出し方、ジェスチャー、ビジュアルエイドなどの非言語コミュニケーションについても体得し、相手に伝える総合的なコミュニケーション力を強化することを目指す。',
  'レポート・成果物 30%，発表・発言70%',
  '前提科目
英語コミュニケーションⅠ（発音）、英語コミュニケーションⅡ（日常会話）
後継科目
英語コミュニケーションⅣ（ビジネス会話）

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


-- 英語コミュニケーションⅣ（ビジネス会話）
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C3-1234-009',
  '英語コミュニケーションⅣ（ビジネス会話）',
  'ビジネスの現場を想定し、徹底的に汎用性を高めた英語表現を用いた、滑らかで途切れない英語の発話、対話の演習を繰り返し行う。演習の過程で、正しい英語の語彙、文法、表現を指導を行うと同時に、学生自身がそれぞれの状況において自主的に課題解決を志向し、自分と他者双方の目的を達成する意義のある会話、対話を組み立てるスキルを磨く機会を提供する。',
  2026,
  '[{"name":"横山 カズ","role":"客員講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q","3-4Q"]',
  '伝わる英語の発音、および対人コミュニケーションにおける積極的なマインドセットをベースとして、様々なビジネスの場面で自らの意図、目的を達成するための英語コミュニケーションのあり方を理解する。具体的には、入社面談、ビジネスパートナーとの交渉、上司との面談など、ビジネスの現場で直面する状況設定の演習を通じて、課題解決のスキルを獲得し、実務的な英語コミュニケーション力を強化することを目指す。',
  '発表・発言 100%',
  '前提科目
英語コミュニケーションⅠ（発音）、英語コミュニケーションⅡ（日常会話）、英語コミュニケーションⅢ（プレゼンテーション）
後継科目
なし

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


-- デジタルトランスフォーメーション時代の働き方
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'CAR-2-C3-1200-010',
  'デジタルトランスフォーメーション時代の働き方',
  '海外の企業にいきなり就職することは難しい。しかし、IT分野については周辺知識さえあれば海外企業に就職し、活躍することが期待できる。本授業では、プログラミングのような操作的な能力については触れず、コンピュータがどう動くのか、エンジニアとはどういう仕事なのか、について学修し、海外で活躍する人材となるために必要なことを学修する。',
  2026,
  '[{"name":"順次公開予定","role":"講師"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '現代社会において、ほとんどの場合、コンピュータと人が協同し分業して仕事をすることになる。その際、コンピュータのもつ、能力の限界や得意なことを理解する。また、どこまでをコンピュータに任せ、どこからを人が担当するのが好ましいかを理解する。これは、ちょうどソフトウェアエンジニアの能力からプログラミングなどの操作的な能力を除いた部分であり、プログラミングを学んでいる場合はソフトウェアエンジニアとして働けるようになることを目標とし、そうでない場合は、ソフトウェアエンジニアに対して、仕事を依頼できるようにすることが目標である。',
  'レポート、発表',
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


-- イラストとデザインA
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-2-D1-1030-001',
  'イラストとデザインA',
  '楽しみながらデジタルツールの使用法とデジタルイラストの創作について学ぶ授業である。共有スピードが速くトレンドの変化が著しいデジタルイラストに関し、知識を本質的なものとするため実際に制作をすることで、身体感覚と思考を融合させる学修を行う。この授業では美術解剖学の視点からイラストにおける筋肉や骨格の仕組み、動きを学ぶ。併せてゲストより表現上のレクチャーを行う。',
  2026,
  '[{"name":"ふるり","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  'イラストレーションの役割について理解し、手を使い、制作しつつ楽しみながら学ぶことによりそのプロセスと価値を知る。さらに、イラストとそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。本授業では骨格と筋肉の形状と動きを知り、様々なポーズへの適用を習得して、人体構造の絵画化を理解できるようになる。',
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


-- イラストとデザインB
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-2-D1-1030-002',
  'イラストとデザインB',
  'ポップカルチャーに触れ、親しみながらデジタルツールの使用法とデジタルイラストの創作について学ぶ授業である。共有スピードが速くトレンドの変化が著しいデジタルイラストの現状を学ぶため、手を動かして各種技法を身につけ、考察する。この授業ではライティングの基礎を学び、正しい陰影のありかたを身につけることで、三次元的な画像の説得力や、陰影のつけ方による感情表現などについて理解を深める。',
  2026,
  '[{"name":"早川 涼太","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  '光と影の概念を導入したイラストレーションの技法について基礎から理解を深め、三次元的にリアリティのあるイラストを構築できるようになる。実際に描いてみることで、物理的な陰影の法則を身につけ、シェードとシャドウの使い分けを理解できるようになる。陰影表現による効果と、そのドラマ性を知ると同時に鑑賞能力を養って、日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。',
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


-- イラストとデザインC
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-2-D1-1030-003',
  'イラストとデザインC',
  'ポップカルチャーに触れ、親しみながらデジタルツールの使用法とイラストレーションの創作について学ぶ授業である。ここではイラストレーターとして就業するシミュレーションを行い、売り込みのスキル、SNSなどネットを活用して社会的影響力を強める方法論、商業展開と媒体のバリエーション、同人活動の現状と経済原理・コミッション・サブスク支援の知識などを学ぶ。これによりイラストレーションを取り巻く経済圏を理解する。',
  2026,
  '[{"name":"早川 涼太","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  1,
  '["1Q","3Q"]',
  'イラストレーションに関わる就業全般に関し、フリーランス、企業サイド双方に必要なことは何かを学ぶ。さらに現状抱いている就業イメージ、技術、資質などを分析したポートフォリオの作成方法や見方を学び、自分の将来像をシミュレーションしてみる。単に「クリエイティブ業界で就職する」だけではなく、より大きな可能性に目を向け、業界の未来をイメージできるようになる。その発想を在学中、卒業後を通じた社会活動に活かしてゆく。',
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


-- イラストとデザインD
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'OPT-2-D1-0204-004',
  'イラストとデザインD',
  '【ゲスト講師：三澤寛志】
この授業ではデッサンを通して、観察力とイラストの価値や本質を見極める力を養う。併せてゲストより表現上のレクチャーを行う。手を動かしながらイラストの創作について学ぶ授業である。基礎的な知識からどのようにものの見方があるかを学ぶことにより、創作プロセスを理解し思考力を養う。画像についての知識を本質的なものとするため、手を動かし制作をすることで、身体感覚と思考を融合させる学修を行う。',
  2026,
  '[{"name":"ふるり","role":"客員講師"}]',
  2,
  'オンデマンド科目',
  '選択',
  1,
  '["2Q","4Q"]',
  'イラストレーションの役割について理解し、手を使い、制作しつつ楽しみながら学ぶことによりそのプロセスと価値を知る。さらに、イラストとそこから派生する作品を鑑賞し、考察し、クオリティを見極める能力を培って、日本の基幹産業でもあるクリエイティブを理解し、在学中、卒業後を通じた社会活動に活かしてゆく。本授業では質感、重量感、遠近、形状などの表現を通じて、イラストレーションにおけるリアリティの知識を手に入れる。',
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


-- 計算機実験で学ぶ確率とモンテカルロ法
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C1-1030-012',
  '計算機実験で学ぶ確率とモンテカルロ法',
  'この講義では、乱数を使った計算機実験を楽しみながら、次のことを学ぶ。
１．大数の法則や中心極限定理などを含む確率の基礎
２．乱数を用いた数値計算法（モンテカルロ法）の基礎
１では、乱数を用いた実験を通じて抽象的にみえる数学的な概念を具体的に観察する。２では、一見するとランダムネスに関係ない計算に乱数が使われる様子を示す。受講者がプログラム（R言語を想定）を書いて実行することでより理解が深まるが、プログラミングは全くだめ、という方が受講されても筋道が理解できるような構成とする。２に「モンテカルロ法」とあるが、ベイズ統計やその他のデータ解析手法について学ぶ講義ではないので注意すること（マルコフ連鎖モンテカルロ法についてはベイズ統計とは関係のない例で説明する）。',
  2026,
  '[{"name":"伊庭 幸人","role":"客員教授"}]',
  2,
  'オンデマンド科目',
  '選択',
  2,
  '["1Q","3Q"]',
  '大数の法則や中心極限定理などを含む確率の基礎について、感覚的に理解できるようになる。モンテカルロ法とはどのようなものかを知る。',
  '確認レポート 50% , 単位認定試験 50%',
  '順次公開予定
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


-- 統計学展望
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  'INF-2-C3-1200-023',
  '統計学展望',
  '一般に統計学の講義には実学的な面が求められるが、この講義ではあえて「 すぐには役立たない統計学」として、シンプルな例を用いて、 ベイズ統計 、頻度論的統計、予測など、  確率分布を用いる統計学の基礎となる考え方を俯瞰する。ソフトウェアの使い方などの実用面をはぶく代わりに、統計学の諸概念の意味するところを新鮮な目で眺めてみたい。本学講義の「統計学を哲学する」が科学哲学の立場から同様のテーマを扱っているのに対し、統計的手法の研究者の立場からデータサイエンスの枠組みを見なおす内容となる。',
  2026,
  '[{"name":"伊庭 幸人","role":"客員教授"}]',
  2,
  '演習科目',
  '選択',
  2,
  '["1-2Q"]',
  '統計学の基礎にある考え方や意見の分かれる点について具体的に理解し、それらについて自分なりに考えることができるようになる。また、統計学全体の「地図」を概観することで、これまでに学修した内容やこの後に学習する内容を広い視野から位置づけられるようになる。',
  '順次公開予定',
  '順次公開予定
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

