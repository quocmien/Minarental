<script setup>
import product from './components/product-car.vue'
import checkbox from './components/checkbox-product.vue'
import axios from 'axios'
import {
  onMounted,
  ref 
} from 'vue'


const desc = ref(`Skip the traditional car rental line. Save time & money with Mina Rental. Book a specific ride of your choice. Our mission is to provide cool local cars for your needs, create a memorible experience through your favorite destinations, weather it's San Diego Zoo, La Jolla Cove, or SeaWorld of SD. We take care each of our vehicles like they're our own, up-to-date maintainces and adequate check in procedure done thoroughly every trip.  Book with confidence today!  "Getaround.com" or download getaround app to rent. Instant access: Find, rent, and unlock cars near you. Our cars are connected so you can unlock with your phone and go-All the options: Cars, trucks, and vans are available by the hour or by the day, so you have the perfect ride for any occasion-No membership: No subscription or monthly membership fees. Pay only for the time you need-Insurance included: All Getaround trips are covered with insurance and 24/7 customer support.  ***INSTRUCTIONS***: Select the features you want on the LEFT.  Enter zipcode in search box above (i.e 92101) or model (i.e. Cruze) to find your sweet rides.  At least 19 years of age to rent. You can also rent for Uber and Uber Select.  Please reach Getaround support team using the app , under "Help"`)

const features = ref([])
const make = ref([])
const rides = ref([])

const products = ref([])

const onSetting = () => {
  axios.get('https://sheets.googleapis.com/v4/spreadsheets/1JM-xrt9JNBPHt1afrvN0FtoXg3UAexlFp81IdtPOAII/values/setting_san!A1:O2000?key=AIzaSyAWOdwaX9RAeTLO9tqlGovFg-CWhGX4TDM')
  .then((res) => {
    console.log('===> res', res.data)
    features.value = [
      ...res.data.values.reduce((arr, key) => ([
        ...arr,
        {
          label: key[1],
          option: key[1]
        }
      ])), []
    ]

    rides.value = [
      ...res.data.values.reduce((arr, key) => ([
        ...arr,
        {
          label: key[2],
          option: key[2]
        }
      ])), []
    ]

    make.value = [
      ...res.data.values.reduce((arr, key) => ([
        ...arr,
        {
          label: key[3],
          option: key[3]
        }
      ])), []
    ]
  })
}

const onProduct = () => {
  axios.get('https://sheets.googleapis.com/v4/spreadsheets/1JM-xrt9JNBPHt1afrvN0FtoXg3UAexlFp81IdtPOAII/values/san!A2:AD2000?key=AIzaSyAWOdwaX9RAeTLO9tqlGovFg-CWhGX4TDM')
  .then((res) => {
    products.value = [
      ...res.data.values.reduce((arr, key) => {
        let btns = []
        if (key[21]) {
          btns = [
            ...btns,
            {
                title: 'GA KEY',
                link: `https://www.getaround.com/key/${key[21]}`
            },
          ]
        }

        if (key[22]) {
          btns = [
            ...btns,
            {
                title: 'EDIT',
                link: `https://www.getaround.com/host/cars/${key[22]}/manage#connect`
            },
          ]
        }

        if (key[23]) {
          btns = [
            ...btns,
            {
                title: 'EDIT',
                link: `https://www.getaround.com/host/cars/${key[23]}/calendar`
            },
          ]
        }

        if (key[24]) {
          btns = [
            ...btns,
            {
                title: 'LOCATION',
                link: `https://www.getaround.com/host/cars/${key[24]}/manage#location`
            },
          ]
        }
        arr = [
          ...arr,
          {
            name: `${key[10]} ${key[11]} ${key[9]}`,
            vin: `${key[8]}`,
            regis_exp: key[14],
            ga_id: key[1],
            features: key[16],
            location: key[12],
            url: key[3],
            btn: btns,
            book: key[20]
          }
        ]
        return arr
      }, [])
    ]
  })
}

onMounted(() => {
  Promise.all([
    onSetting(),
    onProduct()
  ])
})
</script>
<template>
  <div class="common-layout">
    <header class="header">
      <div class="page-container">
        <h2>
          Total: {{ products.length }}
        </h2>
        <p class="text-left header__desc"> {{ desc }} </p>
      </div>
    </header>
    <el-container class="page-container">
      <el-aside >
         <checkbox
            :features="features"
            :make="make"
            :rides="rides"
         />
      </el-aside>
      <el-main>
        <product 
          :products="products"
        />
      </el-main>
    </el-container>
  </div>
</template>



<style lang="scss">
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}

.header {
  text-align: left;
}

.common-layout, #app {
  width: 100%;
  
}

.page-container {
  max-width: 1240px;
  margin: auto;
  margin-bottom: 15px;
}

</style>
