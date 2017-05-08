<!DOCTYPE html>
<html lang="en">
<%@include file="/web/views/partials/commonImport.jsp"%>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>
    <link rel="stylesheet" href="style.css">
    
    <style>
    
    .list-group.panel > .list-group-item {
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  background-color: black;
  color: white;

}
    </style>

</head>

<body>

<!-- from here -->
<%@include file="/web/views/customer/outheader.jsp"%>

<!-- till here -->


    <!-- Page Content -->

            <div class="col-md-3 col-md-3">

                <div class="row">

                    <div class="col-md-12">
                        <!-- CONTENT HERE  -->
                       <%@include file="/web/views/customer/sell.jsp"%>
                    </div>

                </div>
              
            </div>

        </div>
</div>
    </div>
    <!-- /.container -->

    <div class="container" style="text-align: center; color: white; background-color: black; width: 100%;">


        <!-- Footer -->
        
            <div class="row" style="padding: 1em;">
                <div class="col-lg-12">
                    <p>Copyright &copy; FoodQuest Inc</p>
                </div>
            </div>

    </div>

</body>

</html>
