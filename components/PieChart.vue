<template>
  <div class="pie-chart-container">
    <svg :width="width" :height="height" class="pie-chart">
      <!-- Background circle -->
      <circle
        :cx="centerX"
        :cy="centerY"
        :r="radius - 5"
        fill="rgba(255, 255, 255, 0.02)"
        stroke="rgba(255, 255, 255, 0.1)"
        stroke-width="1"
      />
      
      <!-- Pie slices -->
      <g v-for="(slice, index) in slices" :key="index">
        <path
          :d="slice.path"
          :fill="slice.color"
          :opacity="hoveredIndex === null || hoveredIndex === index ? 0.9 : 0.4"
          stroke="rgba(0, 0, 0, 0.3)"
          stroke-width="1"
          class="pie-slice"
          @mouseenter="hoveredIndex = index"
          @mouseleave="hoveredIndex = null"
        />
      </g>
      
      <!-- Center circle (donut effect) -->
      <circle
        v-if="donut"
        :cx="centerX"
        :cy="centerY"
        :r="innerRadius"
        fill="#1a1a2e"
        stroke="rgba(255, 255, 255, 0.1)"
        stroke-width="1"
      />
      
      <!-- Labels -->
      <g v-for="(slice, index) in slices" :key="`label-${index}`">
        <text
          v-if="showLabels"
          :x="slice.labelX"
          :y="slice.labelY"
          text-anchor="middle"
          fill="white"
          font-size="2"
          font-weight="500"
          :opacity="hoveredIndex === null || hoveredIndex === index ? 1 : 0.3"
          class="pie-label"
        >
          {{ slice.percentage }}%
        </text>
      </g>
    </svg>
    
    <!-- Legend -->
    <div v-if="showLegend" class="legend mt-4">
      <div
        v-for="(item, index) in data"
        :key="`legend-${index}`"
        class="legend-item"
        :class="{ active: hoveredIndex === index }"
        @mouseenter="hoveredIndex = index"
        @mouseleave="hoveredIndex = null"
      >
        <span
          class="legend-color"
          :style="{ backgroundColor: colors[index % colors.length] }"
        ></span>
        <span class="legend-label">{{ item.label }}</span>
        <span class="legend-value">{{ item.value }}{{ item.suffix || '' }}</span>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, computed } from 'vue'

interface ChartData {
  label: string
  value: number
  suffix?: string
}

interface Props {
  data: ChartData[]
  width?: number
  height?: number
  donut?: boolean
  showLabels?: boolean
  showLegend?: boolean
  colors?: string[]
}

const props = withDefaults(defineProps<Props>(), {
  width: 300,
  height: 300,
  donut: true,
  showLabels: true,
  showLegend: true,
  colors: () => ['#4FC3F7', '#FF7043', '#FFD54F', '#81C784', '#FFB74D', '#90A4AE']
})

const hoveredIndex = ref<number | null>(null)

const centerX = props.width / 2
const centerY = props.height / 2
const radius = Math.min(props.width, props.height) / 2 - 20
const innerRadius = props.donut ? radius * 0.6 : 0

const total = computed(() => props.data.reduce((sum, item) => sum + item.value, 0))

const slices = computed(() => {
  let startAngle = -Math.PI / 2
  const sliceData = []
  
  props.data.forEach((item, index) => {
    const percentage = (item.value / total.value) * 100
    const angle = (item.value / total.value) * Math.PI * 2
    const endAngle = startAngle + angle
    
    const x1 = centerX + Math.cos(startAngle) * radius
    const y1 = centerY + Math.sin(startAngle) * radius
    const x2 = centerX + Math.cos(endAngle) * radius
    const y2 = centerY + Math.sin(endAngle) * radius
    
    const x1Inner = centerX + Math.cos(startAngle) * innerRadius
    const y1Inner = centerY + Math.sin(startAngle) * innerRadius
    const x2Inner = centerX + Math.cos(endAngle) * innerRadius
    const y2Inner = centerY + Math.sin(endAngle) * innerRadius
    
    const largeArcFlag = angle > Math.PI ? 1 : 0
    
    const path = props.donut
      ? `M ${x1Inner} ${y1Inner} L ${x1} ${y1} A ${radius} ${radius} 0 ${largeArcFlag} 1 ${x2} ${y2} L ${x2Inner} ${y2Inner} A ${innerRadius} ${innerRadius} 0 ${largeArcFlag} 0 ${x1Inner} ${y1Inner}`
      : `M ${centerX} ${centerY} L ${x1} ${y1} A ${radius} ${radius} 0 ${largeArcFlag} 1 ${x2} ${y2} Z`
    
    const labelAngle = startAngle + angle / 2
    const labelRadius = props.donut ? (radius + innerRadius) / 2 : radius * 0.7
    const labelX = centerX + Math.cos(labelAngle) * labelRadius
    const labelY = centerY + Math.sin(labelAngle) * labelRadius
    
    sliceData.push({
      path,
      color: props.colors[index % props.colors.length],
      percentage: percentage.toFixed(1),
      labelX,
      labelY
    })
    
    startAngle = endAngle
  })
  
  return sliceData
})
</script>

<style scoped>
.pie-chart-container {
  display: inline-block;
}

.pie-slice {
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  cursor: pointer;
}

.pie-label {
  pointer-events: none;
  transition: opacity 0.3s;
}

.legend {
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
  justify-content: center;
}

.legend-item {
  display: flex;
  align-items: center;
  gap: 8px;
  padding: 4px 12px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 6px;
  cursor: pointer;
  transition: all 0.3s;
  border: 1px solid transparent;
}

.legend-item:hover,
.legend-item.active {
  background: rgba(255, 255, 255, 0.1);
  border-color: rgba(255, 255, 255, 0.2);
}

.legend-color {
  width: 12px;
  height: 12px;
  border-radius: 2px;
}

.legend-label {
  font-size: 14px;
  color: rgba(255, 255, 255, 0.8);
}

.legend-value {
  font-size: 14px;
  font-weight: 600;
  color: rgba(255, 255, 255, 0.9);
}
</style>