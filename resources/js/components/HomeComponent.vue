<template>
  <div class="row justify-content-center">
      <div class="col-md-8">
          <div class="card card-default">
              <div class="card-header">Login</div>

              <div class="card-body">
                  <form @submit.prevent="doLogin">
                      <div class="row">
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label for="email">Email: </label>
                                  <input type="text" name="email" id="email" class="form-control" v-model="employee.email">
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label for="password">Password: </label>
                                  <input type="password" name="password" id="password" class="form-control" v-model="employee.password">
                              </div>
                          </div>
                      </div>
                      <div class="form-group">
                          <button class="btn btn-primary">Login</button>
                      </div>
                  </form>
              </div>
          </div>          
      </div>
  </div>
</template>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>
    export default {
        data(){
            return {
                employee:{},
                showEmployees:false
            }
        },
        methods:{
            doLogin(){
                const axios = require('axios');
                axios.get('api/loginback')
                .then(response => {
                    this.showEmployees = response.data
                    if(this.showEmployees){
                        this.$router.push({name: 'employees'});
                    }                     
                });
            }
        }
    }
</script>