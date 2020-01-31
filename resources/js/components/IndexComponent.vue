<template>
  <div class="row justify-content-center">
      <div class="col-md-12">
          <div class="card card-default">
                <div id="employee-content">
                    <h4>Employees Details</h4>
                    <section v-if="errored">
                        <p>We're sorry, we're not able to retrieve this information at the moment, please try back later</p>
                    </section>

                    <section v-else>
                        <div v-if="loading">Loading...</div>

                        <table class="table" v-else>
                            <thead>
                                <tr>                                    
                                    <th scope="col">Employee ID</th>
                                    <th scope="col">Employee Image</th>
                                    <th scope="col">Employee Name</th>
                                    <th scope="col">Employee Email</th>
                                    <th scope="col">Branch Name</th>
                                    <th scope="col">Bank Name</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="employee in employees" class="currency" :key='employee.emp_id'>                                    
                                    <td>{{ employee.emp_id }}</td> 
                                    <td><img :src="'img/'+employee.emp_photo" class="images"></td>
                                    <td>{{ employee.emp_name }}</td>  
                                    <td>{{ employee.emp_email }}</td>    
                                    <td>{{ employee.branch_name }}</td> 
                                    <td>{{ employee.bank_name }}</td>                  
                                </tr>
                            </tbody>
                        </table>                       

                    </section>
                </div>
          </div>
      </div>
  </div>
</template>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>
    export default {        
        data () {
            return {
                employees: null,
                loading: true,
                errored: false
            }
        },
        mounted () {
            const axios = require('axios');
            axios.get('api/employees')
            .then(response => {
                this.employees = response.data
            }).catch(error => {
                console.log(error)
                this.errored = true
            }).finally(() => this.loading = false)
        }
    }
</script>