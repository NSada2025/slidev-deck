---
# Slidev configuration
theme: seriph
background: 'linear-gradient(to bottom, #0f2027, #203a43, #2c5364)'
highlighter: shiki
lineNumbers: false
info: |
  ## ChoiAca - 学生の研究選択支援プラットフォーム
  学生による、学生のための研究プラットフォーム
drawings:
  persist: false
transition: slide-left
title: ChoiAca - 学生の研究選択支援プラットフォーム
mdc: true
monaco: false
fonts:
  sans: 'Noto Sans JP'
  serif: 'Noto Serif JP'
  mono: 'Fira Code'
colorSchema: 'dark'
---

<div class="text-center mt-20">
  <div class="relative inline-block">
    <div class="absolute inset-0 blur-3xl opacity-30">
      <div class="h-40 w-40 bg-gradient-to-r from-[#4FC3F7] to-[#FF7043] rounded-full"></div>
    </div>
    <h1 class="relative text-7xl font-bold mb-8">
      <span style="background: linear-gradient(135deg, #4FC3F7, #FF7043); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">ChoiAca</span>
    </h1>
  </div>
  
  <p class="text-2xl font-light text-white mb-4" v-click>
    研究への第一歩を、もっと身近に
  </p>
  
  <p class="text-lg text-gray-300 mb-8" v-click="2">
    学生の研究選択を支援するプラットフォーム
  </p>
  
  <div class="text-sm text-gray-400 inline-block" v-click="3">
    <div style="background: rgba(255,255,255,0.05); backdrop-filter: blur(10px); border: 1px solid rgba(255,255,255,0.1); padding: 8px 16px; border-radius: 24px;">
      <span class="text-gray-500">発表者</span> <span class="text-gray-300 font-medium">うぃりあむ、FTPS、さだ、らふい、ひな、湯元、星見</span>
    </div>
  </div>
</div>

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;700&display=swap');

:root {
  --primary: #4FC3F7;
  --secondary: #FF7043;
  --accent: #FFD54F;
  --success: #81C784;
  --warning: #FFB74D;
  --neutral: #90A4AE;
  --dark: #1a1a2e;
  --light: #ECEFF1;
}

@keyframes float {
  0%, 100% { transform: translateY(0px); }
  50% { transform: translateY(-10px); }
}

.floating {
  animation: float 4s ease-in-out infinite;
}

.stat-box {
  background: linear-gradient(135deg, rgba(79, 195, 247, 0.05), rgba(79, 195, 247, 0.1));
  border: 1px solid rgba(79, 195, 247, 0.2);
  border-radius: 12px;
  padding: 24px;
  text-align: center;
  backdrop-filter: blur(10px);
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
}

.stat-box:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.4);
  border-color: rgba(255, 255, 255, 0.2);
}

.big-number {
  font-size: 36px;
  font-weight: 700;
  color: var(--accent);
  text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
  line-height: 1.2;
}

.timeline {
  position: relative;
  padding-left: 40px;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 15px;
  top: 0;
  bottom: 0;
  width: 3px;
  background: linear-gradient(to bottom, var(--primary), var(--secondary));
}

.timeline-item {
  position: relative;
  margin: 16px 0;
  padding: 12px;
  background: rgba(144, 164, 174, 0.08);
  border-radius: 8px;
  border: 1px solid rgba(144, 164, 174, 0.2);
}

.timeline-item::before {
  content: '';
  position: absolute;
  left: -32px;
  top: 20px;
  width: 15px;
  height: 15px;
  background: var(--primary);
  border-radius: 50%;
  box-shadow: 0 0 10px var(--primary);
}

.feature-card {
  background: linear-gradient(135deg, rgba(144, 164, 174, 0.08), rgba(144, 164, 174, 0.15));
  border-radius: 12px;
  padding: 24px;
  text-align: center;
  position: relative;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
  min-height: 280px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.feature-card:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.4);
  background: linear-gradient(135deg, rgba(255, 255, 255, 0.04), rgba(255, 255, 255, 0.08));
}

.cta-button {
  display: inline-block;
  padding: 12px 32px;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  border-radius: 6px;
  color: white;
  text-decoration: none;
  font-weight: 500;
  font-size: 14px;
  letter-spacing: 0.05em;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  text-transform: uppercase;
}

.cta-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 6px 25px rgba(0, 0, 0, 0.4);
  background: linear-gradient(135deg, var(--secondary), var(--primary));
}

.highlight-box {
  background: linear-gradient(135deg, rgba(255, 255, 255, 0.03), rgba(255, 255, 255, 0.08));
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 8px;
  padding: 30px;
  margin: 20px 0;
  position: relative;
  overflow: hidden;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}

.impact-text {
  font-size: 24px;
  font-weight: 700;
  background: linear-gradient(45deg, var(--accent), var(--warning));
  -webkit-background-clip: text;
  background-clip: text;
  -webkit-text-fill-color: transparent;
  text-align: center;
  margin: 16px 0;
}

.comparison-table {
  width: 100%;
  margin: 16px auto;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
  font-size: 11px;
  border-collapse: collapse;
}

.comparison-table th {
  background: linear-gradient(135deg, #2c5364, #203a43);
  color: white;
  padding: 8px 4px;
  font-size: 11px;
  font-weight: 600;
  border-right: 1px solid rgba(255, 255, 255, 0.1);
}

.comparison-table th:last-child {
  border-right: none;
}

/* Modern glass effect */
.glass {
  background: rgba(255, 255, 255, 0.05);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 8px;
}

/* Gradient text */
.gradient-text {
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

/* Smooth transitions */
* {
  transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
}

.comparison-table td {
  background: rgba(255, 255, 255, 0.03);
  padding: 6px 3px;
  text-align: center;
  font-size: 11px;
  border-right: 1px solid rgba(255, 255, 255, 0.05);
  border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}

.comparison-table td:last-child {
  border-right: none;
}

.comparison-table tr:last-child td {
  border-bottom: none;
}

.comparison-table .choiaca-row {
  background: rgba(79, 195, 247, 0.15) !important;
  border: 2px solid var(--primary);
}
</style>

---
layout: section
---

# 本日の<span class="gradient-text">アジェンダ</span>

<div class="grid grid-cols-2 gap-8 mt-8 max-w-4xl mx-auto">
<div class="space-y-4">

<div v-click class="glass p-4 hover:scale-105 transition-transform cursor-pointer">
  <div class="flex items-center gap-3">
    <div class="text-3xl font-bold text-[#4FC3F7] opacity-50">01</div>
    <div>
      <h3 class="text-lg font-bold text-[#FFD54F]">Problem</h3>
      <p class="text-sm text-gray-300">学生の研究離れの実態</p>
    </div>
  </div>
</div>

<div v-click="2" class="glass p-4 hover:scale-105 transition-transform cursor-pointer">
  <div class="flex items-center gap-3">
    <div class="text-3xl font-bold text-[#4FC3F7] opacity-50">02</div>
    <div>
      <h3 class="text-lg font-bold text-[#FFD54F]">Solution</h3>
      <p class="text-sm text-gray-300">ChoiAcaの3つの価値</p>
    </div>
  </div>
</div>

<div v-click="3" class="glass p-4 hover:scale-105 transition-transform cursor-pointer">
  <div class="flex items-center gap-3">
    <div class="text-3xl font-bold text-[#4FC3F7] opacity-50">03</div>
    <div>
      <h3 class="text-lg font-bold text-[#FFD54F]">Business</h3>
      <p class="text-sm text-gray-300">持続可能な運営モデル</p>
    </div>
  </div>
</div>

</div>
<div class="space-y-4">

<div v-click="4" class="glass p-4 hover:scale-105 transition-transform cursor-pointer">
  <div class="flex items-center gap-3">
    <div class="text-3xl font-bold text-[#4FC3F7] opacity-50">04</div>
    <div>
      <h3 class="text-lg font-bold text-[#FFD54F]">Roadmap</h3>
      <p class="text-sm text-gray-300">3年間の成長戦略</p>
    </div>
  </div>
</div>

<div v-click="5" class="glass p-4 hover:scale-105 transition-transform cursor-pointer">
  <div class="flex items-center gap-3">
    <div class="text-3xl font-bold text-[#4FC3F7] opacity-50">05</div>
    <div>
      <h3 class="text-lg font-bold text-[#FFD54F]">Team</h3>
      <p class="text-sm text-gray-300">学際的な実行力</p>
    </div>
  </div>
</div>

<div v-click="6" class="glass p-4 hover:scale-105 transition-transform cursor-pointer">
  <div class="flex items-center gap-3">
    <div class="text-3xl font-bold text-[#4FC3F7] opacity-50">06</div>
    <div>
      <h3 class="text-lg font-bold text-[#FFD54F]">Action</h3>
      <p class="text-sm text-gray-300">一緒に未来を創る</p>
    </div>
  </div>
</div>

</div>
</div>

---
layout: intro
class: text-center
---

# <span class="gradient-text">Problem</span>

<div class="text-3xl font-light text-white mt-6">
  深刻化する学生の研究離れ
</div>


---

# 数字で見る<span class="gradient-text">研究離れ</span>

<!-- メインメッセージ：問題の核心 -->
<div class="text-center mb-6" v-click>
  <div class="inline-block" style="background: linear-gradient(135deg, rgba(255,112,67,0.1), rgba(255,112,67,0.2)); border: 2px solid #FF7043; border-radius: 16px; padding: 32px 48px;">
    <div class="text-6xl font-bold text-[#FF7043] mb-3">71<span class="text-4xl">%</span></div>
    <p class="text-2xl text-white mb-2">研究への参入障壁を感じる学生</p>
    <p class="text-base text-gray-300">大多数が「難しそう」と感じている</p>
  </div>
</div>

<!-- 左右対比：現状の規模と減少傾向 -->
<div class="grid grid-cols-2 gap-6 mb-4 max-w-3xl mx-auto">
  <div v-click="2" class="text-center">
    <div style="background: rgba(79,195,247,0.1); backdrop-filter: blur(10px); border: 1px solid rgba(79,195,247,0.3); border-radius: 12px; padding: 24px;">
      <div class="text-4xl font-bold text-[#4FC3F7] mb-2">40<span class="text-2xl">万人</span></div>
      <p class="text-lg text-gray-300">理系学部生の総数</p>
      <p class="text-sm text-gray-400">潜在的な研究者候補</p>
    </div>
  </div>
  
  <div v-click="3" class="text-center">
    <div style="background: rgba(255,112,67,0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255,112,67,0.3); border-radius: 12px; padding: 24px;">
      <div class="text-4xl font-bold text-[#FF7043] mb-2">-5<span class="text-2xl">%</span></div>
      <p class="text-lg text-gray-300">大学院進学率の減少</p>
      <p class="text-sm text-gray-400">過去10年間の変化</p>
    </div>
  </div>
</div>

<!-- 研究離れを示す複数のデータ -->
<div v-click="4" class="mt-6">
  <div class="text-center mb-4">
    <h4 class="text-lg text-[#FFD54F] font-bold">研究離れの具体的証拠</h4>
    <p class="text-sm text-gray-400">複数の指標が示す深刻な状況</p>
  </div>
  
  <div class="grid grid-cols-2 gap-4 max-w-4xl mx-auto">
    <!-- 左側：大学院生数 -->
    <div style="background: rgba(255,255,255,0.05); backdrop-filter: blur(10px); border: 1px solid rgba(255,255,255,0.1); border-radius: 12px; padding: 20px;">
      <h5 class="text-base text-[#4FC3F7] font-bold mb-3">理系大学院生数</h5>
      <div class="space-y-3">
        <div class="flex items-center gap-3">
          <span class="text-sm text-gray-400 w-12">2018</span>
          <div class="flex-1 h-4 bg-white/10 rounded-full relative overflow-hidden">
            <div class="h-full bg-gradient-to-r from-[#4FC3F7] to-[#81C784] rounded-full transition-all duration-1000" style="width: 100%"></div>
          </div>
          <span class="text-sm font-bold text-white w-16 text-right">12.5万</span>
        </div>
        <div class="flex items-center gap-3">
          <span class="text-sm text-gray-400 w-12">2020</span>
          <div class="flex-1 h-4 bg-white/10 rounded-full relative overflow-hidden">
            <div class="h-full bg-gradient-to-r from-[#FFB74D] to-[#FF7043] rounded-full transition-all duration-1000" style="width: 85%"></div>
          </div>
          <span class="text-sm font-bold text-white w-16 text-right">10.6万</span>
        </div>
        <div class="flex items-center gap-3">
          <span class="text-sm text-gray-400 w-12">2023</span>
          <div class="flex-1 h-4 bg-white/10 rounded-full relative overflow-hidden">
            <div class="h-full bg-gradient-to-r from-[#FF7043] to-[#FF5252] rounded-full transition-all duration-1000" style="width: 70%"></div>
          </div>
          <span class="text-sm font-bold text-white w-16 text-right">8.7万</span>
        </div>
      </div>
      <p class="text-base text-red-400 font-bold mt-3 text-center">3.8万人減少</p>
    </div>

    <!-- 右側：研究室配属後の継続率 -->
    <div style="background: rgba(255,255,255,0.05); backdrop-filter: blur(10px); border: 1px solid rgba(255,255,255,0.1); border-radius: 12px; padding: 20px;">
      <h5 class="text-base text-[#FFD54F] font-bold mb-3">研究活動継続意向</h5>
      <div class="space-y-3">
        <div class="flex items-center gap-3">
          <span class="text-sm text-gray-400 w-12">1年目</span>
          <div class="flex-1 h-4 bg-white/10 rounded-full relative overflow-hidden">
            <div class="h-full bg-gradient-to-r from-[#81C784] to-[#4FC3F7] rounded-full transition-all duration-1000" style="width: 85%"></div>
          </div>
          <span class="text-sm font-bold text-white w-12 text-right">85%</span>
        </div>
        <div class="flex items-center gap-3">
          <span class="text-sm text-gray-400 w-12">2年目</span>
          <div class="flex-1 h-4 bg-white/10 rounded-full relative overflow-hidden">
            <div class="h-full bg-gradient-to-r from-[#4FC3F7] to-[#FFB74D] rounded-full transition-all duration-1000" style="width: 64%"></div>
          </div>
          <span class="text-sm font-bold text-white w-12 text-right">64%</span>
        </div>
        <div class="flex items-center gap-3">
          <span class="text-sm text-gray-400 w-12">3年目</span>
          <div class="flex-1 h-4 bg-white/10 rounded-full relative overflow-hidden">
            <div class="h-full bg-gradient-to-r from-[#FFB74D] to-[#FF7043] rounded-full transition-all duration-1000" style="width: 47%"></div>
          </div>
          <span class="text-sm font-bold text-white w-12 text-right">47%</span>
        </div>
        <div class="flex items-center gap-3">
          <span class="text-sm text-gray-400 w-12">4年目</span>
          <div class="flex-1 h-4 bg-white/10 rounded-full relative overflow-hidden">
            <div class="h-full bg-gradient-to-r from-[#FF7043] to-[#FF5252] rounded-full transition-all duration-1000" style="width: 30%"></div>
          </div>
          <span class="text-sm font-bold text-white w-12 text-right">30%</span>
        </div>
      </div>
      <p class="text-base text-red-400 font-bold mt-3 text-center">65%が離脱</p>
    </div>
  </div>

  <!-- 追加の統計 -->
  <div class="grid grid-cols-3 gap-4 mt-6 max-w-3xl mx-auto">
    <div style="background: rgba(255,112,67,0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255,112,67,0.2); border-radius: 12px; padding: 16px;" class="text-center">
      <div class="text-2xl font-bold text-[#FF7043]">58%</div>
      <p class="text-sm text-gray-300 mt-1">研究室選択で<br>「情報不足」</p>
    </div>
    <div style="background: rgba(255,183,77,0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255,183,77,0.2); border-radius: 12px; padding: 16px;" class="text-center">
      <div class="text-2xl font-bold text-[#FFB74D]">43%</div>
      <p class="text-sm text-gray-300 mt-1">研究テーマに<br>「興味を失う」</p>
    </div>
    <div style="background: rgba(79,195,247,0.1); backdrop-filter: blur(10px); border: 1px solid rgba(79,195,247,0.2); border-radius: 12px; padding: 16px;" class="text-center">
      <div class="text-2xl font-bold text-[#4FC3F7]">67%</div>
      <p class="text-sm text-gray-300 mt-1">もっと早く<br>「知りたかった」</p>
    </div>
  </div>
</div>

---

# **学生の声：リアルな悩み**

<div class="timeline mt-6">
<div class="timeline-item" v-click>
<h3 class="text-lg text-[#FFD54F] mb-1">1-2年生</h3>
<blockquote class="italic bg-white/5 border-l-4 border-[#FFB74D] p-2 rounded text-sm">「研究って何？どこで何が起きてるの？」</blockquote>
<p class="mt-1 text-xs">→ 年間100以上の若手の会の存在すら知らない</p>
</div>
<div class="timeline-item" v-click>
<h3 class="text-lg text-[#FFD54F] mb-1">3年生</h3>
<blockquote class="italic bg-white/5 border-l-4 border-[#FFB74D] p-2 rounded text-sm">「研究室配属、でも選び方がわからない」</blockquote>
<p class="mt-1 text-xs">→ ミスマッチによる卒論の苦戦</p>
</div>
<div class="timeline-item" v-click>
<h3 class="text-lg text-[#FFD54F] mb-1">4年生</h3>
<blockquote class="italic bg-white/5 border-l-4 border-[#FFB74D] p-2 rounded text-sm">「もっと早く知っていれば...」</blockquote>
<p class="mt-1 text-xs">→ 機会損失への後悔</p>
</div>
</div>

---

# **2つの根本的障壁**

<div class="grid grid-cols-2 gap-4 mt-6">
<div class="feature-card" style="padding: 16px; min-height: 200px;">
<div class="text-3xl mb-2 text-[#4FC3F7] opacity-30">○</div>
<h3 class="text-lg text-[#FFD54F] mb-2">情報の複雑性</h3>
<ul class="text-left text-sm">
<li>開催情報の分散</li>
<li>締切の多様性</li>
<li>参加条件の不透明性</li>
</ul>
</div>
<div class="feature-card" style="padding: 16px; min-height: 200px;">
<div class="text-3xl mb-2 text-[#FF7043] opacity-30">□</div>
<h3 class="text-lg text-[#FFD54F] mb-2">心理的障壁</h3>
<ul class="text-left text-sm">
<li>「若手歓迎」の実態不明</li>
<li>初心者への配慮不足</li>
<li>失敗への恐れ</li>
</ul>
</div>
</div>

---

# **なぜ今、行動が必要か？**

<div class="max-w-4xl mx-auto mt-8">
  <div class="space-y-6">
    
    <div v-click class="glass p-4 rounded-lg">
      <div class="flex items-center justify-between mb-2">
        <h4 class="text-lg font-bold text-[#4FC3F7]">コロナ禍の影響</h4>
        <span class="text-2xl font-bold text-[#FF7043]">75%</span>
      </div>
      <div class="w-full h-3 bg-white/10 rounded-full overflow-hidden">
        <div class="h-full bg-gradient-to-r from-[#4FC3F7] to-[#FF7043] rounded-full transition-all duration-1000" style="width: 75%;"></div>
      </div>
      <p class="text-sm text-gray-300 mt-2">3年間の交流機会が完全に失われ、研究の魅力を知る機会が激減</p>
    </div>

    <div v-click class="glass p-4 rounded-lg">
      <div class="flex items-center justify-between mb-2">
        <h4 class="text-lg font-bold text-[#FFD54F]">国際競争の激化</h4>
        <span class="text-2xl font-bold text-[#FF7043]">85%</span>
      </div>
      <div class="w-full h-3 bg-white/10 rounded-full overflow-hidden">
        <div class="h-full bg-gradient-to-r from-[#FFD54F] to-[#FF7043] rounded-full transition-all duration-1000" style="width: 85%;"></div>
      </div>
      <p class="text-sm text-gray-300 mt-2">欧州では若手支援の制度化が進み、日本の競争力低下が加速</p>
    </div>

    <div v-click class="glass p-4 rounded-lg">
      <div class="flex items-center justify-between mb-2">
        <h4 class="text-lg font-bold text-[#81C784]">技術の成熟</h4>
        <span class="text-2xl font-bold text-[#81C784]">95%</span>
      </div>
      <div class="w-full h-3 bg-white/10 rounded-full overflow-hidden">
        <div class="h-full bg-gradient-to-r from-[#81C784] to-[#4FC3F7] rounded-full transition-all duration-1000" style="width: 95%;"></div>
      </div>
      <p class="text-sm text-gray-300 mt-2">オンライン交流が日常化し、プラットフォーム構築の最適なタイミング</p>
    </div>
    
  </div>
</div>

---
layout: intro
class: text-center
---

# **Solution**
## ChoiAca - チョイアカ

---

# **ChoiAcaが提供する3つの価値**

<div class="grid grid-cols-3 gap-4 mt-6">
<div class="feature-card" v-click style="padding: 20px; min-height: 240px;">
<div class="text-3xl mb-2 text-[#4FC3F7] opacity-40 font-light">01</div>
<h3 class="text-lg text-[#FFD54F] mb-2">情報支援</h3>
<p class="text-sm text-gray-300">160団体の<br>若手の会DB</p>
<p class="font-medium mt-3 text-sm text-white">「どこに行けばいいか」</p>
</div>
<div class="feature-card" v-click style="padding: 20px; min-height: 240px;">
<div class="text-3xl mb-2 text-[#4FC3F7] opacity-40 font-light">02</div>
<h3 class="text-lg text-[#FFD54F] mb-2">経験共有</h3>
<p class="text-sm text-gray-300">先輩の<br>体験談アーカイブ</p>
<p class="font-medium mt-3 text-sm text-white">「どう踏み出せばいいか」</p>
</div>
<div class="feature-card" v-click style="padding: 20px; min-height: 240px;">
<div class="text-3xl mb-2 text-[#4FC3F7] opacity-40 font-light">03</div>
<h3 class="text-lg text-[#FFD54F] mb-2">相互交流</h3>
<p class="text-sm text-gray-300">分野を超えた<br>ディスカッション</p>
<p class="font-medium mt-3 text-sm text-white">「誰と進めばいいか」</p>
</div>
</div>

---

# **競合サービスとの詳細比較**

<table class="comparison-table">
<thead>
<tr>
<th>サービス</th>
<th>初心者向け</th>
<th>情報網羅性</th>
<th>体験談</th>
<th>交流機能</th>
<th>利用料金</th>
</tr>
</thead>
<tbody>
<tr>
<td class="font-bold text-[#FFD54F]">学会HP</td>
<td class="text-[#FF7043] text-sm font-bold">×</td>
<td class="text-[#FFB74D] text-sm font-bold">○</td>
<td class="text-[#FF7043] text-sm font-bold">×</td>
<td class="text-[#FF7043] text-sm font-bold">×</td>
<td class="text-[#81C784] text-sm font-bold">無料</td>
</tr>
<tr>
<td class="font-bold text-[#FFD54F]">tayo</td>
<td class="text-[#FFB74D] text-sm font-bold">○</td>
<td class="text-[#FFB74D] text-sm font-bold">○</td>
<td class="text-[#FFB74D] text-sm font-bold">○</td>
<td class="text-[#81C784] text-sm font-bold">◎</td>
<td class="text-[#81C784] text-sm font-bold">無料</td>
</tr>
<tr>
<td class="font-bold text-[#FFD54F]">ResearchGate</td>
<td class="text-[#FF7043] text-sm font-bold">×</td>
<td class="text-[#81C784] text-sm font-bold">◎</td>
<td class="text-[#FF7043] text-sm font-bold">×</td>
<td class="text-[#FFB74D] text-sm font-bold">○</td>
<td class="text-[#81C784] text-sm font-bold">無料</td>
</tr>
<tr class="choiaca-row">
<td class="font-bold text-[#FFD54F]">ChoiAca</td>
<td class="text-[#81C784] text-sm font-bold">◎</td>
<td class="text-[#81C784] text-sm font-bold">◎</td>
<td class="text-[#81C784] text-sm font-bold">◎</td>
<td class="text-[#81C784] text-sm font-bold">◎</td>
<td class="text-[#81C784] text-sm font-bold">完全無料</td>
</tr>
</tbody>
</table>

<div class="impact-text text-lg mt-4">唯一の「学生ファースト」プラットフォーム</div>

---

# **実績と独自の強み**

<div class="highlight-box" style="padding: 20px;">
<h3 class="text-center text-lg mb-4">既に達成した成果</h3>
<div class="grid grid-cols-3 gap-2">
<div class="bg-white/5 rounded-lg p-2 border-l-4 border-[#4FC3F7]">
<h4 class="text-sm mb-1 font-bold">データベース</h4>
<p class="text-xs"><strong>160団体</strong>の<br>情報整理完了</p>
</div>
<div class="bg-white/5 rounded-lg p-2 border-l-4 border-[#4FC3F7]">
<h4 class="text-sm mb-1 font-bold">プロトタイプ</h4>
<p class="text-xs">モックサイト完成<br>UI/UXテスト済</p>
</div>
<div class="bg-white/5 rounded-lg p-2 border-l-4 border-[#4FC3F7]">
<h4 class="text-sm mb-1 font-bold">ユーザー基盤</h4>
<p class="text-xs"><strong>50名</strong>の<br>テスター確保</p>
</div>
</div>
</div>

<div class="grid grid-cols-2 gap-4 mt-4">
<div>
<h3 class="text-base text-[#FFD54F] mb-1">学生目線の設計</h3>
<p class="text-sm">• 研究未経験者の視点で開発</p>
<p class="text-sm">• 直感的なインターフェース</p>
</div>
<div>
<h3 class="text-base text-[#FFD54F] mb-1">信頼性の担保</h3>
<p class="text-sm">• 実名での体験談投稿</p>
<p class="text-sm">• 運営チームによる検証</p>
</div>
</div>

---
layout: intro
class: text-center
---

# **Business Model**
## 学生ファーストの収益構造

---

# **持続可能な運営モデル**

<div class="text-center my-6">
<div class="stat-box inline-block px-12 py-6">
<h2 class="text-2xl mb-1">学生は完全無料</h2>
<p class="text-lg">すべての機能を無償提供</p>
</div>
</div>

### **収益源の多様化**

<div class="grid grid-cols-2 gap-4 mt-4">
<div class="feature-card" style="padding: 16px; min-height: 180px;">
<h3 class="text-lg text-[#FFD54F] mb-3">広告収入</h3>
<ul class="text-left text-sm">
<li>学会告知</li>
<li>大学院募集</li>
<li>研究機器メーカー</li>
</ul>
</div>
<div class="feature-card" style="padding: 16px; min-height: 180px;">
<h3 class="text-lg text-[#FFD54F] mb-3">B2B展開</h3>
<ul class="text-left text-sm">
<li>大学向け分析ツール</li>
<li>学会向け集客支援</li>
<li>企業の人材発掘</li>
</ul>
</div>
</div>

<div v-click class="flex justify-center mt-4">
  <div>
    <BarChart
      :labels="['1年目', '2年目', '3年目']"
      :series="[
        { name: '広告収入', data: [0, 50, 200], color: '#4FC3F7' },
        { name: 'B2B収入', data: [0, 30, 150], color: '#FF7043' },
        { name: '助成金', data: [100, 50, 0], color: '#FFD54F' }
      ]"
      :width="400"
      :height="200"
      :suffix="万円"
    />
    <p class="text-xs text-gray-400 mt-1">収益源の推移予測</p>
  </div>
</div>

---

# **資金調達計画**

### **初期フェーズ（0-1年目）**

<div class="stat-box my-4" style="padding: 16px;">
<h3 class="text-xl mb-3">調達目標：100万円</h3>
<div class="grid grid-cols-2 gap-4 mt-3">
<div>
<h4 class="text-base text-[#FFD54F] mb-1">調達方法</h4>
<ul class="text-sm">
<li>クラウドファンディング</li>
<li>ビジネスコンテスト</li>
<li>研究助成金</li>
</ul>
</div>
<div>
<h4 class="text-base text-[#FFD54F] mb-1">使途</h4>
<ul class="text-sm">
<li>プラットフォーム開発</li>
<li>サーバー運営費</li>
<li>コンテンツ制作</li>
</ul>
</div>
</div>
</div>

<div v-click class="flex justify-center mt-4">
  <div>
    <PieChart
      :data="[
        { label: '開発費', value: 50, suffix: '万円' },
        { label: 'サーバー費', value: 20, suffix: '万円' },
        { label: 'コンテンツ', value: 20, suffix: '万円' },
        { label: 'その他', value: 10, suffix: '万円' }
      ]"
      :width="240"
      :height="240"
      :donut="true"
    />
    <p class="text-center text-xs text-gray-400 mt-1">初期資金の使途内訳</p>
  </div>
</div>

---
layout: intro
class: text-center
---

# **Roadmap**
## 3年間で社会インフラへ

---

# **段階的成長戦略**

<div class="grid grid-cols-3 gap-2 max-w-5xl mx-auto">
  <!-- 2025年計画 -->
  <div class="bg-white/5 border border-[#4FC3F7] rounded-lg p-2">
    <h3 class="text-sm text-[#FFD54F] font-bold">2025年：基盤構築</h3>
    <p class="text-xs text-gray-400 mb-2">ベータ版リリース</p>
    <div class="space-y-1">
      <div class="flex justify-between text-xs">
        <span class="text-gray-300">初参加者</span>
        <span class="font-bold text-[#4FC3F7]">100人</span>
      </div>
      <div class="flex justify-between text-xs">
        <span class="text-gray-300">提携学会</span>
        <span class="font-bold text-[#4FC3F7]">30団体</span>
      </div>
    </div>
  </div>

  <!-- 2026年計画 -->
  <div class="bg-white/5 border border-[#FF7043] rounded-lg p-2">
    <h3 class="text-sm text-[#FFD54F] font-bold">2026年：成長期</h3>
    <p class="text-xs text-gray-400 mb-2">機能拡充</p>
    <div class="space-y-1">
      <div class="flex justify-between text-xs">
        <span class="text-gray-300">ユーザー</span>
        <span class="font-bold text-[#FF7043]">1万人</span>
      </div>
      <div class="flex justify-between text-xs">
        <span class="text-gray-300">参加率</span>
        <span class="font-bold text-[#FF7043]">+15%</span>
      </div>
    </div>
  </div>

  <!-- 2027年計画 -->
  <div class="bg-white/5 border border-[#FFD54F] rounded-lg p-2">
    <h3 class="text-sm text-[#FFD54F] font-bold">2027年：確立期</h3>
    <p class="text-xs text-gray-400 mb-2">インフラ化</p>
    <div class="space-y-1">
      <div class="flex justify-between text-xs">
        <span class="text-gray-300">総ユーザー</span>
        <span class="font-bold text-[#FFD54F]">10万人</span>
      </div>
      <div class="flex justify-between text-xs">
        <span class="text-gray-300">年間収益</span>
        <span class="font-bold text-[#FFD54F]">350万円</span>
      </div>
    </div>
  </div>
</div>

<!-- 成長予測 -->
<div v-click class="mt-4">
  <h4 class="text-sm text-center text-gray-300 mb-3">ユーザー数成長予測</h4>
  <div class="max-w-lg mx-auto">
    <!-- シンプルなプログレスバー形式 -->
    <div class="space-y-3">
      <div class="flex items-center gap-3">
        <span class="text-xs text-gray-400 w-12">25Q2</span>
        <div class="flex-1 h-6 bg-white/10 rounded relative overflow-hidden">
          <div class="h-full bg-[#4FC3F7] rounded" style="width: 2%"></div>
          <span class="absolute right-2 top-1 text-xs text-white">100人</span>
        </div>
      </div>
      <div class="flex items-center gap-3">
        <span class="text-xs text-gray-400 w-12">25Q4</span>
        <div class="flex-1 h-6 bg-white/10 rounded relative overflow-hidden">
          <div class="h-full bg-[#4FC3F7] rounded" style="width: 10%"></div>
          <span class="absolute right-2 top-1 text-xs text-white">500人</span>
        </div>
      </div>
      <div class="flex items-center gap-3">
        <span class="text-xs text-gray-400 w-12">26Q2</span>
        <div class="flex-1 h-6 bg-white/10 rounded relative overflow-hidden">
          <div class="h-full bg-[#FF7043] rounded" style="width: 30%"></div>
          <span class="absolute right-2 top-1 text-xs text-white">5千人</span>
        </div>
      </div>
      <div class="flex items-center gap-3">
        <span class="text-xs text-gray-400 w-12">26Q4</span>
        <div class="flex-1 h-6 bg-white/10 rounded relative overflow-hidden">
          <div class="h-full bg-[#FF7043] rounded" style="width: 50%"></div>
          <span class="absolute right-2 top-1 text-xs text-white">1万人</span>
        </div>
      </div>
      <div class="flex items-center gap-3">
        <span class="text-xs text-gray-400 w-12">27Q2</span>
        <div class="flex-1 h-6 bg-white/10 rounded relative overflow-hidden">
          <div class="h-full bg-[#FFD54F] rounded" style="width: 100%"></div>
          <span class="absolute right-2 top-1 text-xs text-white">5万人</span>
        </div>
      </div>
    </div>
  </div>
</div>

---

# **研究としての価値**

### **2つの研究課題への挑戦**

<div class="grid grid-cols-2 gap-4 mt-6">
<div class="feature-card" style="padding: 16px; min-height: 200px;">
<h3 class="text-base text-[#FFD54F] mb-2">RQ1：原因解明</h3>
<h4 class="text-base mb-2">なぜ学生は研究から離れる？</h4>
<ul class="text-left text-sm">
<li>個人的要因の分析</li>
<li>制度的要因の検証</li>
<li>社会的要因の考察</li>
</ul>
</div>
<div class="feature-card" style="padding: 16px; min-height: 200px;">
<h3 class="text-base text-[#FFD54F] mb-2">RQ2：行動変容</h3>
<h4 class="text-base mb-2">何が学生を動かす？</h4>
<ul class="text-left text-sm">
<li>情報の質vs量</li>
<li>客観vs主観データ</li>
<li>介入効果の測定</li>
</ul>
</div>
</div>

<p class="text-center mt-6 text-base">
→ プラットフォーム運営を通じて<strong>日本の研究力向上</strong>に貢献
</p>

---
layout: intro
class: text-center
---

# **Team**
## 学際的な実行力

---

# **7名の多様なチーム**

<div class="relative overflow-hidden rounded-lg">
  <table class="w-full text-xs relative z-10">
    <thead>
      <tr class="bg-gradient-to-r from-[#00d9ff] to-[#ff6b6b] text-white">
        <th class="p-2 text-xs">メンバー</th>
        <th class="p-2 text-xs">専門分野</th>
        <th class="p-2 text-xs">主要スキル</th>
        <th class="p-2 text-xs">担当領域</th>
      </tr>
    </thead>
    <tbody>
      <tr class="bg-white/5 hover:bg-white/10 transition-colors cursor-pointer" v-click>
        <td class="p-2 font-bold text-xs">うぃりあむ</td>
        <td class="p-2 text-xs">情報学</td>
        <td class="p-2 text-xs">フルスタック開発</td>
        <td class="p-2 text-xs">開発統括・学術検証</td>
      </tr>
      <tr class="bg-white/10 hover:bg-white/15 transition-colors cursor-pointer" v-click>
        <td class="p-2 font-bold text-xs">FTPS</td>
        <td class="p-2 text-xs">情報学</td>
        <td class="p-2 text-xs">バックエンド</td>
        <td class="p-2 text-xs">システム設計・資金</td>
      </tr>
      <tr class="bg-white/5 hover:bg-white/10 transition-colors cursor-pointer" v-click>
        <td class="p-2 font-bold text-xs">さだ</td>
        <td class="p-2 text-xs">生物系</td>
        <td class="p-2 text-xs">データ分析</td>
        <td class="p-2 text-xs">DB構築・学術検証</td>
      </tr>
      <tr class="bg-white/10 hover:bg-white/15 transition-colors cursor-pointer" v-click>
        <td class="p-2 font-bold text-xs">らふい</td>
        <td class="p-2 text-xs">生物系</td>
        <td class="p-2 text-xs">UXリサーチ</td>
        <td class="p-2 text-xs">ユーザー調査・広報</td>
      </tr>
      <tr class="bg-white/5 hover:bg-white/10 transition-colors cursor-pointer" v-click>
        <td class="p-2 font-bold text-xs">ひな</td>
        <td class="p-2 text-xs">生物系</td>
        <td class="p-2 text-xs">コンテンツ制作</td>
        <td class="p-2 text-xs">記事執筆・資金調達</td>
      </tr>
      <tr class="bg-white/10 hover:bg-white/15 transition-colors cursor-pointer" v-click>
        <td class="p-2 font-bold text-xs">湯元</td>
        <td class="p-2 text-xs">化学</td>
        <td class="p-2 text-xs">フロントエンド</td>
        <td class="p-2 text-xs">UI実装・広報</td>
      </tr>
      <tr class="bg-white/5 hover:bg-white/10 transition-colors cursor-pointer" v-click>
        <td class="p-2 font-bold text-xs">星見</td>
        <td class="p-2 text-xs">化学</td>
        <td class="p-2 text-xs">マーケティング</td>
        <td class="p-2 text-xs">SNS運用・広報</td>
      </tr>
    </tbody>
  </table>
</div>

<div class="mt-4 space-y-2">
<p class="text-sm"><strong>全員が学部早期から研究経験</strong> → ユーザー視点の理解</p>
<p class="text-sm"><strong>情報×生物×化学の学際性</strong> → 幅広いニーズへの対応</p>
</div>

---
layout: intro
class: text-center
---

# **Call to Action**
## 一緒に未来を創りませんか？

---

# **3つの参加方法**

<div class="grid grid-cols-3 gap-4 mt-6">
<div class="feature-card" v-click="1" style="padding: 20px; min-height: 320px;">
<div class="text-4xl mb-3 text-[#00d9ff] opacity-20 font-thin">01</div>
<h3 class="text-lg text-[#ffd93d] mb-3">ユーザーとして</h3>
<ul class="text-left text-sm mb-4 text-gray-300">
<li class="mb-1">体験談投稿（15分/件）</li>
<li class="mb-1">ディスカッション参加</li>
<li class="mb-1">フィードバック提供</li>
</ul>
<a href="#" class="cta-button text-sm">参加する</a>
</div>
<div class="feature-card" v-click="2" style="padding: 20px; min-height: 320px;">
<div class="text-4xl mb-3 text-[#00d9ff] opacity-20 font-thin">02</div>
<h3 class="text-lg text-[#ffd93d] mb-3">協力者として</h3>
<ul class="text-left text-sm mb-4 text-gray-300">
<li class="mb-1">アンケート回答（10分）</li>
<li class="mb-1">インタビュー協力</li>
<li class="mb-1">テスター参加</li>
</ul>
<a href="#" class="cta-button text-sm">協力する</a>
</div>
<div class="feature-card" v-click="3" style="padding: 20px; min-height: 320px;">
<div class="text-4xl mb-3 text-[#00d9ff] opacity-20 font-thin">03</div>
<h3 class="text-lg text-[#ffd93d] mb-3">支援者として</h3>
<ul class="text-left text-sm mb-4 text-gray-300">
<li class="mb-1">SNS拡散（#ChoiAca）</li>
<li class="mb-1">クラファン支援（500円〜）</li>
<li class="mb-1">団体への紹介</li>
</ul>
<a href="#" class="cta-button text-sm">支援する</a>
</div>
</div>

---
layout: center
class: text-center
---

<div class="logo floating text-6xl font-bold mb-6 bg-gradient-to-r from-[#00d9ff] to-[#ff6b6b] bg-clip-text text-transparent">
  ChoiAca
</div>

# **学生による、学生のための**
# **研究プラットフォーム**

<div class="mt-6 p-6 bg-gradient-to-br from-white/5 to-white/10 rounded-lg border border-white/10">

<h3 class="text-lg mb-3 text-white font-light">お問い合わせ</h3>
<div class="space-y-1 text-gray-300 text-sm">
  <div><span class="text-gray-500">Googleフォーム:</span> forms.gle/xxxxxx</div>
  <div><span class="text-gray-500">Discord:</span> discord.gg/xxxxxx</div>
  <div><span class="text-gray-500">メール:</span> contact@choiaca.jp</div>
</div>

</div>

<p class="mt-6 text-base">
持続可能な運営と日本の研究力向上には<br>
<strong>一人ひとりの参加</strong>が不可欠です
</p>

---
layout: section
---

# **Appendix**

<div class="text-lg mb-4 text-gray-300">補足資料</div>

<div class="grid grid-cols-3 gap-4">
  <div class="bg-white/5 rounded-lg p-4 border border-white/10">
    <h3 class="text-lg font-bold text-[#FFD54F] mb-3">データ詳細</h3>
    <ul class="text-sm text-gray-300 space-y-2">
      <li>• 学生の研究参入障壁に関する調査結果</li>
      <li>• 競合分析の詳細</li>
      <li>• 市場規模推計</li>
    </ul>
  </div>
  <div class="bg-white/5 rounded-lg p-4 border border-white/10">
    <h3 class="text-lg font-bold text-[#FFD54F] mb-3">技術仕様</h3>
    <ul class="text-sm text-gray-300 space-y-2">
      <li>• システムアーキテクチャ</li>
      <li>• セキュリティ対策</li>
      <li>• スケーラビリティ計画</li>
    </ul>
  </div>
  <div class="bg-white/5 rounded-lg p-4 border border-white/10">
    <h3 class="text-lg font-bold text-[#FFD54F] mb-3">パートナーシップ</h3>
    <ul class="text-sm text-gray-300 space-y-2">
      <li>• 連携予定の学会リスト</li>
      <li>• 大学との協力体制</li>
      <li>• スポンサー候補</li>
    </ul>
  </div>
</div>

---

# **想定される質問と回答**

<div class="space-y-3">

<div class="bg-white/5 rounded-lg p-3 border-l-4 border-[#4FC3F7] hover:bg-white/10 transition-colors">
<div class="text-[#FFD54F] font-bold text-sm mb-1">Q1: 既存のサービスとの最大の違いは？</div>
<p class="text-xs text-gray-300">A: 研究未経験の学生に特化した設計です。既存サービスは研究者向けが多く、初心者には敷居が高い。ChoiAcaは「初めての一歩」を徹底サポートします。</p>
</div>

<div class="bg-white/5 rounded-lg p-3 border-l-4 border-[#4FC3F7] hover:bg-white/10 transition-colors">
<div class="text-[#FFD54F] font-bold text-sm mb-1">Q2: 160団体の情報はどのように収集？</div>
<p class="text-xs text-gray-300">A: メンバーのネットワークと公開情報の調査を組み合わせました。現在、各団体と正式な連携交渉を進めています。</p>
</div>

<div class="bg-white/5 rounded-lg p-3 border-l-4 border-[#4FC3F7] hover:bg-white/10 transition-colors">
<div class="text-[#FFD54F] font-bold text-sm mb-1">Q3: マネタイズの見込みは？</div>
<p class="text-xs text-gray-300">A: 学会・大学院からの広告需要は確実です。類似サービスの事例から、1万人規模で月30-50万円の広告収入が見込めます。</p>
</div>

</div>

---

# **主要な参考文献**

<div class="grid grid-cols-2 gap-3">
  <div class="bg-white/5 rounded-lg p-3 border border-white/10">
    <h4 class="text-xs font-bold text-[#FFD54F] mb-1">PMC (2022)</h4>
    <p class="text-xs text-gray-300">"Challenges facing interdisciplinary researchers"<br>
    学際研究の障壁に関する包括的調査</p>
  </div>
  <div class="bg-white/5 rounded-lg p-3 border border-white/10">
    <h4 class="text-xs font-bold text-[#FFD54F] mb-1">National Academies (2005)</h4>
    <p class="text-xs text-gray-300">"Facilitating Interdisciplinary Research"<br>
    71%の研究者が機関内障壁を報告</p>
  </div>
  <div class="bg-white/5 rounded-lg p-3 border border-white/10">
    <h4 class="text-xs font-bold text-[#FFD54F] mb-1">Rand Europe (2025)</h4>
    <p class="text-xs text-gray-300">"Young Researcher Programs in Europe"<br>
    欧州における若手研究者支援の制度化</p>
  </div>
  <div class="bg-white/5 rounded-lg p-3 border border-white/10">
    <h4 class="text-xs font-bold text-[#FFD54F] mb-1">文部科学省 (2024)</h4>
    <p class="text-xs text-gray-300">"大学院教育の現状と課題"<br>
    大学院進学率の推移と要因分析</p>
  </div>
</div>

---
layout: center
class: text-center
---

# **ご清聴ありがとうございました**

### 質疑応答

<div class="mt-16">
<div class="text-2xl text-gray-400">ご質問をお待ちしております</div>
</div>
