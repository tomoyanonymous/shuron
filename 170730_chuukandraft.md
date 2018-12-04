# 中間発表

CCD1年 城研究室 松浦知也

<!--卒制までで1分　大学院概要で一分　6月ライブで一分　これからので合計2分-->

---

## メディア考古学的視点からの音楽メディアとしての電子楽器の制作

note:
CCD1年城研究室の松浦知也です。「メディア考古学的視点からの音楽メディアとしての電子楽器の制作」というタイトルで発表します。よろしくお願いします。

---

# これまでやってきたこと

音響装置作品の制作

note:
まず簡単にこれまでの自分の活動を紹介します。去年まで東京藝術大学の音楽環境創造科という所で音響・サウンドデザインを勉強する一方でインスタレーション作品などを制作してきました。

---

卒業制作「送れ|遅れ/post|past」

![画像]()

note:
こちらが卒業制作で制作したインスタレーションです。説明がやや複雑なので今回は省略しますが簡単に説明すると

---

コンピュータ超初期の記憶装置「音響遅延線」を出発点とした作品

note:
この作品とその前の作品では継続してコンピュータ超初期の音パルスのフィードバックを用いた記憶装置「音響遅延線メモリー」を題材に別の形で現代に再現する、といった作品でした。

---

## 要点

- メディア考古学的視点(デッドメディアの採掘)
- 「通信/伝達」と「記録・記憶」の等価性

note:
コンセプトや後の考察の要点として、既に使われなくなったメディアを研究・考察するメディア考古学的アプローチと言われるものを参考に、通信の連続によって記録が成立するという音響遅延線メモリーの特徴から「通信/伝達」と「記録・記憶」の等価性について考察する、といった事を論考にまとめました。

---

## 大学院

「メディア考古学的視点からの音楽メディアとしての電子楽器の制作」

note:
そして、今やっている研究のテーマに移るわけですが、

---

- もうちょっと軸を音楽寄りにする
- 「通信/伝達」⇔「記録・記憶」を「演奏(ライブ)」⇔「録音(アーカイブ)」と変形

note:
これまでの作品制作における「音」に対する視点をより「音楽」に寄った視点で考察する、ということをします。
先程の「通信/伝達」と「記録・記憶」の等価性というものを音楽に置き換えて考えると、「演奏、ライブすること」と「アーカイブすること」の等価性のようなものが考えられるのではないかということです。

---

## 具体的な形態

- 電子楽器そのもの（演奏活動）の製作
- 電子楽器を題材にした展示作品
- 音楽メディア（装置）の制作
- <!--（音楽プログラミング言語の制作？）
-->

note:
といってもかなり抽象的だと思うので具体的に進行しようとしているものを挙げます。一つは「楽器」を音楽の保存の一形態として捉えるという視点です。もう一つは「音楽メディア」ですが、こちらは再生装置を一体化した音楽メディアの形態ということを考え、それらと楽器の連続性について考察します。

もう一つはまだ実現するか未定ですが、音楽プログラミング言語においてライブを考慮した様々な言語が登場しているものの、アーカイブ、楽譜の延長としての音楽プログラミング言語を制作できないかというものです。

---

## 現状報告

note:
ここからは4月から現在までの活動を報告します。

---

## 6月 ライブ@つくると！in多次元

![ライブ画像、動画？]()

note:
6月頭に多次元ホールでライブを行いました。

---

## 何をやったのか？

- ミキサー+マイク+スピーカーのみでのフィードバックを主にした演奏
- 要点:歪・EQ・遅延・フィードバックの4要素

note:
ここでやったことは、マイク・スピーカー・ミキサーでのフィードバックループを用いたパフォーマンスでした。
ただ単にハウリングを起こすだけではなく、ミキサーのEQを調整することによってビートのある音を作ったり、金管楽器に近い音色を出したりすることが可能、といったシステムでした。

---

## 今後の予定

### 展示作品制作(10月)

「抽象的な物理モデル楽器」をテーマに制作
Whirlwindというメタ物理モデリング楽器をベースにマイク＋スピーカー＋幾つかの回路で物理化
要点：物理モデルの1手法、ウェーブガイドモデルは歪・EQ・遅延・フィードバックの4要素が肝である
→6月のライブシステムと共通

note:
10月末に奈良で展示をすることが決まっていて、そこでは「抽象的な物理モデル楽器」をテーマに制作をしようとしています。
物理モデリング合成の初期に、フルートとクラリネットとトランペットを合体させたようなメタ物理モデリング楽器というのを参照して、それを6月でやったライブのシステムをベースに実際のマイクやスピーカーなどで構成し、さらに別のシステムとして発展させていく、というような事を考えています。

### ミニマルDIY音楽プレイヤー
マイコン+電源+microSDのみで作るオーディオプレーヤー
DAC無しでもDSDに予め変換すれば再生できる
要点：再生装置と音楽メディアの機能が一体化している、かつその中で最安＆誰でも作れるを目指す

note:
こちらはもう一つ現在進行中ですが、再生装置と一体化した音楽メディアを作るという部分で、マイコンとSDカードと電源だけで作るDIYオーディオプレーヤーを制作しています。マイコンは出力が2値のものを使いますが予めデータをDSDのような1bit形式に変換して再生することでマイコンから直接出力するというものです。誰でも簡単に作れて、再生装置付きメディアとしてはかなり安価に、かつオープンソースハードウェア的な展開ができたら理想・・・と思ってますが、とりあえず自分で作った音楽とかを入れて売ってみたいと思っています。
現在技術的には可能そうになってきたので夏中にプロトタイプ終わらせたいと思っています。
（DSDに変換するエンコーダは出来た、SDカードからの読み込みのスピードが間に合うかが肝になりそう）

---

## 課題

- メディア考古学的視点はどのくらい古くなくても適用できるのか（物理モデルって90年代だけど）