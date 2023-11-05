<script setup >
import carImage from '../assets/img/car.jpg'
const props = defineProps({
  url: {
    type: String,
    default: carImage,
  },
  products: {
    type: Array,
    default: [],
  }

});

const { urlImage, productsCar, products} = props;
</script>

<template>
  <el-row class="product" :gutter="10"
    v-for="(item, index) in products"
    :key="index"
  >
    <el-col :span="14" >
       <div
        class="grid-content product__item-background"
        :data-background="url"
        :style="{
          backgroundImage: `url(${url})`,
        }"
      />
    </el-col>
    <el-col class="product__content" :span="10">
      <div
        class="grid-content"
      >
        <h2 class="content__title">
        {{ item.name }}
        </h2>
        <h3 class="content__promotion">
          {{ item.promotion }}
        </h3>
        <p class="content__des">
          {{ item.desc }}
        </p>
        <p class="content__item">
          <span class="content__item-title">
            VIN
          </span>
          <span class="content__item-description">
            {{ item.vin }}
          </span>
        </p>
        <p class="content__item">
          <span class="content__item-title">
            REGIS EXP:
          </span>
          <span class="content__item-description">
            {{ item.regis_exp }}
          </span>
        </p>
        <p class="content__item">
          <span class="content__item-title">
            GA ID:
          </span>
          <span class="content__item-description">
            {{ item.ga_id }}
          </span>
        </p>
        <p class="content__item">
          <span class="content__item-title">
            Features:
          </span>
          <span class="content__item-description">
            {{ item.features }}
          </span>
        </p>
        <p class="content__item">
          <span class="content__item-title">
            Location:
          </span>
          <span class="content__item-description">
            {{ item.location }}
          </span>
        </p>
        <p class="content__status">
          {{ item.status }}
        </p>
        <div 
          class="content__btn" 
        >
          <el-row
            :gutter="5"
          >
            <el-col 
              :span="8"
              v-for="(item, index) in item.btn"
              :key="index"
            >
              <el-button class="grid-content content__btn-item" type="warning" round>{{ item.title }}</el-button>
            </el-col>
          </el-row>
        </div>
        <el-row class="book__now">
          <el-button class="book__now-btn grid-content" type="success" round>Success</el-button>
        </el-row>
      </div>
    </el-col>
  </el-row>
</template>

<style lang="scss">
.product {

  font-family: inherit;
  line-height: 1.4rem;
  font-weight: 400;
  text-align: start;
}

.product__item{
  background-color: bisque;
}

.product__item-background {
  padding-top: 100%;
  background: no-repeat;
  background-size: cover;
}

.el-row {
  margin-bottom: 20px;
}
.el-row:last-child {
  margin-bottom: 0;
}
.el-col {
  border-radius: 4px;
}

.grid-content {
  border-radius: 4px;
  min-height: 36px;
}

.content {
  margin: 10px ;

  &__title{
    font-size: 1rem;
    font-weight: 500;
    line-height: 1.2rem;
  }

  &__promotion {
    font-size: 14px;
    line-height: 1.4rem;
    font-weight: 400;
  }
  &__des {
    font-size: 15px;
  }
  &__item {
    font-size: 15px;;

    &-title {
      font-weight: 700;
    }
  }
  &__btn {
    &-item {
      width: 100%;
      margin-bottom: 5px;
    }
  }

}
  .book__now-btn {
      width: 100%;
      margin-top: 20px;
  }

  p, h1, h2, h3, h4, h5, h6, span {
    margin: 0;
  }
</style>
