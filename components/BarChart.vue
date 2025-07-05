<template>
  <div class="bar-chart-container">
    <svg :width="width" :height="height" class="bar-chart">
      <!-- Y-axis -->
      <line
        :x1="padding"
        :y1="padding"
        :x2="padding"
        :y2="height - padding"
        stroke="rgba(255, 255, 255, 0.2)"
        stroke-width="1"
      />
      
      <!-- X-axis -->
      <line
        :x1="padding"
        :y1="height - padding"
        :x2="width - padding"
        :y2="height - padding"
        stroke="rgba(255, 255, 255, 0.2)"
        stroke-width="1"
      />
      
      <!-- Grid lines -->
      <g class="grid">
        <line
          v-for="i in gridLines"
          :key="`grid-${i}`"
          :x1="padding"
          :x2="width - padding"
          :y1="getGridY(i)"
          :y2="getGridY(i)"
          stroke="rgba(255, 255, 255, 0.05)"
          stroke-dasharray="2,2"
        />
      </g>
      
      <!-- Y-axis labels -->
      <g class="y-labels">
        <text
          v-for="i in gridLines"
          :key="`y-label-${i}`"
          :x="padding - 10"
          :y="getGridY(i) + 4"
          text-anchor="end"
          fill="rgba(255, 255, 255, 0.5)"
          font-size="2"
        >
          {{ getGridValue(i) }}
        </text>
      </g>
      
      <!-- Bars -->
      <g class="bars">
        <g v-for="(series, seriesIndex) in seriesData" :key="`series-${seriesIndex}`">
          <rect
            v-for="(value, index) in series.values"
            :key="`bar-${seriesIndex}-${index}`"
            :x="getBarX(index, seriesIndex)"
            :y="getBarY(value)"
            :width="barWidth"
            :height="getBarHeight(value)"
            :fill="series.color"
            :opacity="hoveredBar === null || (hoveredBar.series === seriesIndex && hoveredBar.index === index) ? 0.9 : 0.4"
            class="bar"
            @mouseenter="hoveredBar = { series: seriesIndex, index }"
            @mouseleave="hoveredBar = null"
          />
        </g>
      </g>
      
      <!-- X-axis labels -->
      <g class="x-labels">
        <text
          v-for="(label, index) in labels"
          :key="`label-${index}`"
          :x="getGroupCenter(index)"
          :y="height - padding + 20"
          text-anchor="middle"
          fill="rgba(255, 255, 255, 0.6)"
          font-size="2"
        >
          {{ label }}
        </text>
      </g>
      
      <!-- Values on bars -->
      <g v-if="showValues" class="values">
        <g v-for="(series, seriesIndex) in seriesData" :key="`values-${seriesIndex}`">
          <text
            v-for="(value, index) in series.values"
            :key="`value-${seriesIndex}-${index}`"
            :x="getBarX(index, seriesIndex) + barWidth.value / 2"
            :y="getBarY(value) - 5"
            text-anchor="middle"
            fill="white"
            font-size="2"
            font-weight="500"
            :opacity="hoveredBar === null || (hoveredBar.series === seriesIndex && hoveredBar.index === index) ? 1 : 0"
            class="value-text"
          >
            {{ formatValue(value) }}
          </text>
        </g>
      </g>
    </svg>
    
    <!-- Legend -->
    <div v-if="series.length > 1 && showLegend" class="legend mt-4">
      <div
        v-for="(s, index) in series"
        :key="`legend-${index}`"
        class="legend-item"
        @mouseenter="hoveredSeries = index"
        @mouseleave="hoveredSeries = null"
      >
        <span
          class="legend-color"
          :style="{ backgroundColor: seriesData[index].color }"
        ></span>
        <span class="legend-label">{{ s.name }}</span>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, computed } from 'vue'

interface Series {
  name: string
  data: number[]
  color?: string
}

interface Props {
  labels: string[]
  series: Series[]
  width?: number
  height?: number
  showValues?: boolean
  showLegend?: boolean
  colors?: string[]
  suffix?: string
  max?: number
}

const props = withDefaults(defineProps<Props>(), {
  width: 600,
  height: 300,
  showValues: true,
  showLegend: true,
  colors: () => ['#4FC3F7', '#FF7043', '#FFD54F', '#81C784'],
  suffix: ''
})

const hoveredBar = ref<{ series: number; index: number } | null>(null)
const hoveredSeries = ref<number | null>(null)

const padding = 40
const chartWidth = computed(() => props.width - 2 * padding)
const chartHeight = computed(() => props.height - 2 * padding)
const gridLines = 5

const seriesData = computed(() => 
  props.series.map((s, i) => ({
    ...s,
    color: s.color || props.colors[i % props.colors.length],
    values: s.data
  }))
)

const maxValue = computed(() => {
  if (props.max) return props.max
  const allValues = seriesData.value.flatMap(s => s.values)
  return Math.max(...allValues) * 1.1
})

const groupWidth = computed(() => chartWidth.value / props.labels.length)
const barWidth = computed(() => groupWidth.value / (props.series.length + 1) * 0.8)

const getBarX = (index: number, seriesIndex: number) => {
  const groupStart = padding + index * groupWidth.value
  const groupCenter = groupStart + groupWidth.value / 2
  const totalBarsWidth = barWidth.value * props.series.length
  const startX = groupCenter - totalBarsWidth / 2
  return startX + seriesIndex * barWidth.value
}

const getGroupCenter = (index: number) => {
  return padding + index * groupWidth.value + groupWidth.value / 2
}

const getBarY = (value: number) => {
  return padding + chartHeight.value * (1 - value / maxValue.value)
}

const getBarHeight = (value: number) => {
  return chartHeight.value * (value / maxValue.value)
}

const getGridY = (index: number) => {
  return padding + (chartHeight.value / gridLines) * (gridLines - index)
}

const getGridValue = (index: number) => {
  const value = (maxValue.value / gridLines) * index
  if (value >= 10000) return `${(value / 1000).toFixed(0)}K`
  if (value >= 1000) return `${(value / 1000).toFixed(1)}K`
  return value.toFixed(0)
}

const formatValue = (value: number) => {
  return value + props.suffix
}
</script>

<style scoped>
.bar-chart-container {
  display: inline-block;
}

.bar {
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  cursor: pointer;
}

.value-text {
  pointer-events: none;
  transition: opacity 0.3s;
}

.legend {
  display: flex;
  gap: 16px;
  justify-content: center;
}

.legend-item {
  display: flex;
  align-items: center;
  gap: 6px;
  padding: 4px 12px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 6px;
  cursor: pointer;
  transition: all 0.3s;
}

.legend-item:hover {
  background: rgba(255, 255, 255, 0.1);
}

.legend-color {
  width: 12px;
  height: 12px;
  border-radius: 2px;
}

.legend-label {
  font-size: 13px;
  color: rgba(255, 255, 255, 0.8);
}
</style>