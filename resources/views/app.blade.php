<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Summit</title>
    <link rel="stylesheet" href="dist/app.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <style>
        #main-content {
            padding: 5% 5%;
        }

        #employee-content{
            padding: 2% 2%;
        }

        .images{
            width: 50%;
            height: 50%;
        }
    </style>
</head>
<body>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card card-default" id="main-content">
                <h2>Emplyee Management App</h2>
                <div id="app">        
                    <p>
                        <router-link to="/login">Login</router-link>
                        <router-link to="/index">View All Employees</router-link>
                    </p>
                    <router-view></router-view>
                </div>
            </div>
        </div>        
    </div>    
    <script src="dist/app.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>