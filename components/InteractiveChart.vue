<template>
  <div class="chart-container" @mousemove="handleMouseMove" @mouseleave="handleMouseLeave">
    <svg :width="width" :height="height" class="chart">
      <!-- Axes -->
      <g class="axes">
        <!-- Y-axis -->
        <line
          :x1="padding"
          :y1="padding"
          :x2="padding"
          :y2="height - padding"
          stroke="rgba(255,255,255,0.3)"
          stroke-width="1"
        />
        <!-- X-axis -->
        <line
          :x1="padding"
          :y1="height - padding"
          :x2="width - padding"
          :y2="height - padding"
          stroke="rgba(255,255,255,0.3)"
          stroke-width="1"
        />
      </g>
      
      <!-- Grid lines -->
      <g class="grid">
        <line
          v-for="i in 5"
          :key="`h-${i}`"
          :x1="padding"
          :x2="width - padding"
          :y1="(height - 2 * padding) * (i / 5) + padding"
          :y2="(height - 2 * padding) * (i / 5) + padding"
          stroke="rgba(255,255,255,0.1)"
          stroke-dasharray="2,2"
        />
      </g>
      
      <!-- Y-axis labels -->
      <g class="y-labels">
        <text
          v-for="i in 6"
          :key="`y-${i}`"
          :x="padding - 5"
          :y="(height - 2 * padding) * ((6-i) / 5) + padding + 3"
          text-anchor="end"
          fill="rgba(255,255,255,0.5)"
          font-size="10"
        >
          {{ Math.round(maxValue * (i-1) / 5) }}
        </text>
      </g>
      
      <!-- Data bars -->
      <g class="bars">
        <rect
          v-for="(item, index) in data"
          :key="index"
          :x="getX(index)"
          :y="getY(item.value)"
          :width="barWidth"
          :height="getHeight(item.value)"
          :fill="hoveredIndex === index ? '#FF7043' : '#4FC3F7'"
          :opacity="hoveredIndex === null || hoveredIndex === index ? 0.8 : 0.3"
          class="bar"
          @mouseenter="hoveredIndex = index"
        />
      </g>
      
      <!-- Labels -->
      <g class="labels">
        <text
          v-for="(item, index) in data"
          :key="`label-${index}`"
          :x="getX(index) + barWidth / 2"
          :y="height - padding + 20"
          text-anchor="middle"
          fill="rgba(255,255,255,0.6)"
          font-size="12"
        >
          {{ item.label }}
        </text>
      </g>
      
      <!-- Values -->
      <g class="values" v-if="showValues">
        <text
          v-for="(item, index) in data"
          :key="`value-${index}`"
          :x="getX(index) + barWidth / 2"
          :y="getY(item.value) - 5"
          text-anchor="middle"
          fill="white"
          font-size="12"
          font-weight="500"
          :opacity="hoveredIndex === null || hoveredIndex === index ? 1 : 0"
          class="value-text"
        >
          {{ item.value }}{{ item.suffix || '' }}
        </text>
      </g>
    </svg>
    
    <!-- Tooltip -->
    <div
      v-if="hoveredIndex !== null && tooltip"
      class="tooltip"
      :style="{
        left: `${mouseX + 10}px`,
        top: `${mouseY - 30}px`
      }"
    >
      <div class="font-bold">{{ data[hoveredIndex].label }}</div>
      <div>{{ data[hoveredIndex].value }}{{ data[hoveredIndex].suffix || '' }}</div>
      <div v-if="data[hoveredIndex].detail" class="text-sm opacity-80">
        {{ data[hoveredIndex].detail }}
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
  detail?: string
}

interface Props {
  data: ChartData[]
  width?: number
  height?: number
  showValues?: boolean
  tooltip?: boolean
}

const props = withDefaults(defineProps<Props>(), {
  width: 500,
  height: 250,
  showValues: true,
  tooltip: true
})

const padding = 30
const hoveredIndex = ref<number | null>(null)
const mouseX = ref(0)
const mouseY = ref(0)

const barWidth = computed(() => (props.width - 2 * padding) / props.data.length * 0.7)
const maxValue = computed(() => Math.max(...props.data.map(d => d.value)) * 1.1)

const getX = (index: number) => {
  const spacing = (props.width - 2 * padding) / props.data.length
  return padding + spacing * index + spacing * 0.15
}

const getY = (value: number) => {
  const chartHeight = props.height - 2 * padding
  return padding + chartHeight * (1 - value / maxValue)
}

const getHeight = (value: number) => {
  const chartHeight = props.height - 2 * padding
  return chartHeight * (value / maxValue)
}

const handleMouseMove = (e: MouseEvent) => {
  const rect = (e.currentTarget as HTMLElement).getBoundingClientRect()
  mouseX.value = e.clientX - rect.left
  mouseY.value = e.clientY - rect.top
}

const handleMouseLeave = () => {
  hoveredIndex.value = null
}
</script>

<style scoped>
.chart-container {
  position: relative;
  display: inline-block;
}

.bar {
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  cursor: pointer;
}

.value-text {
  transition: opacity 0.3s;
}

.tooltip {
  position: absolute;
  background: rgba(0, 0, 0, 0.9);
  border: 1px solid rgba(255, 255, 255, 0.2);
  border-radius: 4px;
  padding: 8px 12px;
  color: white;
  font-size: 14px;
  pointer-events: none;
  z-index: 100;
  white-space: nowrap;
}
</style>