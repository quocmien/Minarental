<script setup>
import product from './components/product-car.vue'
import checkbox from './components/checkbox-product.vue'

  const productsCar = {
    products: [
    {
      url: '../assets/img/car.jpg',
      name: 'BUICK Cascada-Black 2017',
      promotion: '2017 BUICK Cascada-Black GAID: Cascada0765',
      desc: '715660E',
      vin: 'W04WH3N54HG110765',
      regis_exp: '05/31/2024 ',
      ga_id: 'Cascada0765',
      features: 'Automatic transmission, AUX input, Convertible, USB input, Bluetooth, Backup Camera, Cruise Control',
      location: ' 450 S Siesta Ln, Tempe, AZ 85288 ',
      status: 'ARIZONA -ON TRIP-NOT AVAILABLE',
      btn: [
        {
          title: 'GA KEY'
        },
                {
          title: 'GA KEY'
        },
                {
          title: 'GA KEY'
        },
                {
          title: 'GA KEY'
        },
                {
          title: 'GA KEY'
        },
      ]
    },
    {
      name: 'BUICK Cascada-Black 2017',
      promotion: '2017 BUICK Cascada-Black GAID: Cascada0765',
      desc: '715660E',
      vin: 'W04WH3N54HG110765',
      regis_exp: '05/31/2024 ',
      ga_id: 'Cascada0765',
      features: 'Automatic transmission, AUX input, Convertible, USB input, Bluetooth, Backup Camera, Cruise Control',
      location: ' 450 S Siesta Ln, Tempe, AZ 85288 ',
      status: 'ARIZONA -ON TRIP-NOT AVAILABLE'
    },
    {
      name: 'BUICK Cascada-Black 2017',
      promotion: '2017 BUICK Cascada-Black GAID: Cascada0765',
      desc: '715660E',
      vin: 'W04WH3N54HG110765',
      regis_exp: '05/31/2024 ',
      ga_id: 'Cascada0765',
      features: 'Automatic transmission, AUX input, Convertible, USB input, Bluetooth, Backup Camera, Cruise Control',
      location: ' 450 S Siesta Ln, Tempe, AZ 85288 ',
      status: 'ARIZONA -ON TRIP-NOT AVAILABLE'
    },
    {
      name: 'BUICK Cascada-Black 2017',
      promotion: '2017 BUICK Cascada-Black GAID: Cascada0765',
      desc: '715660E',
      vin: 'W04WH3N54HG110765',
      regis_exp: '05/31/2024 ',
      ga_id: 'Cascada0765',
      features: 'Automatic transmission, AUX input, Convertible, USB input, Bluetooth, Backup Camera, Cruise Control',
      location: ' 450 S Siesta Ln, Tempe, AZ 85288 ',
      status: 'ARIZONA -ON TRIP-NOT AVAILABLE'
    }
  ]
  }

  const checkboxList = {
    features : [
      {
        option: 'all-wheel-drive',
        label: 'All-wheel dive'
      },
      {
        option: 'all-wheel-drive',
        label: 'All-wheel dive'
      },    {
        option: 'all-wheel-drive',
        label: 'All-wheel dive'
      },    {
        option: 'all-wheel-drive',
        label: 'All-wheel dive'
      },
    ],
    make : [
      {
        option: 'all-wheel-drive',
        label: 'All-wheel dive'
      },
      {
        option: 'all-wheel-drive',
        label: 'All-wheel dive'
      },    {
        option: 'all-wheel-drive',
        label: 'All-wheel dive'
      },    {
        option: 'all-wheel-drive',
        label: 'All-wheel dive'
      },
    ]
  }

</script>
<template>
  <div class="common-layout">
    <el-container>
      <el-aside 
        width="200px"
        
      >
         <checkbox
            v-bind="checkboxList"
         />
      </el-aside>
      <el-main>
        <product 
          v-bind="productsCar"
        />
      </el-main>
    </el-container>
  </div>
</template>



<style >
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


</style>
