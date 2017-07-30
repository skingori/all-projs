<table id="owners" style="font-size:13px; padding:0px;" class="table table-striped recordtable cell-border">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    
    <thead style="Background-color:#F2F2F2;" >
<tr >
                     
                     <th>Owner Name </th>   
                      <th>Marital status </th>

                     <th>Phone No </th> 

 <th>Account No</th>
 <th>Bank Name</th>
 <th>Bank Branch</th>
 
 <th>Edit</th>
 <th>Delete</th>
 
                   </tr>
               </thead> 
                   
                 <tbody>                
               <?php        
//include('../config/dbConfig.php');
 
                   
                   
                    $query1="SELECT *  FROM propertyowners ";
                     $rs1= mysqli_query($db,$query1);
 while ($row1 = mysqli_fetch_assoc($rs1)) {
   echo '<td >'.$row1['fullnames']."</td>";
   echo '<td  >'.$row1['mstatus']."</td>";
                  echo '<td  >'.$row1['telephone']."</td>";
                  echo '<td  >'.$row1['accnumber']."</td>";
                  echo '<td  >'.$row1['bank_name']."</td>";
                  echo '<td  >'.$row1['bank_branch']."</td>";

 
                   
                 
                  
                      
                  

         echo"<td> <a href ='#' id = 'myOwnerBtn'>Edit</a></td>"; 
         echo"<td> <a href ='#' id = 'deleteOwnerBtn'>Delete</a></td>"; 
    
    
    
    
 
            
echo "</tr>";               
 }
        
    

                ?>
                 </tbody>     
              
         </table>
    
    </div>
    <div class="tab-pane fade active in" style="overflow:auto"; id="checkout">
    <p>Check out</p>
    </div>

                        </div>
                    </div>


                </div>
            
                 
    </div>

             <!-- /. PAGE INNER  -->
             
            </div>
         <!-- /. PAGE WRAPPER  -->
         
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                   
                </div>
        </div>
        </div>
       
 

  <div id="myOwnerModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner">×</span>
      <h2><center>Edit property owner details</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="edit_owner.php" method="post" enctype="multipart/form-data" name="form5" id="form5">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Record No &nbsp
</td>
<td>
 <input id="owner_idedit" type="" class="form-control" readonly="true" name="owner_idedit" value="<?php echo $owner_id; ?>" placeholder="<?php echo $owner_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Full Name &nbsp
</td>
<td>
   <input id="fullnamesedit" type="" class="form-control"  name="fullnamesedit" value="<?php echo $fullnames; ?>" placeholder="<?php echo $fullnames; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Marital Status &nbsp
</td>
<td>
 <input id="mstatusedit" type="" class="form-control" name="mstatusedit" value="<?php echo $mstatus; ?>" placeholder="<?php echo $mstatus; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone number &nbsp
</td>
<td>
 <input id="telephoneedit" type="" class="form-control" name="telephoneedit" value="<?php echo $telephone; ?>" placeholder="<?php echo $telephone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Account number &nbsp
</td>
<td>
 <input id="accnumberedit" type="" class="form-control" name="accnumberedit" value="<?php echo $accnumber; ?>" placeholder="<?php echo $accnumber; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Bank Branch &nbsp
</td>
<td>
 <input id="bank_branchedit" type="" class="form-control" name="bank_branchedit" value="<?php echo $bank_branch; ?>" placeholder="<?php echo $bank_branch; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Bank Name &nbsp
</td>
<td>
 <input id="bank_nameedit" type="" class="form-control" name="bank_nameedit" value="<?php echo $bank_name; ?>" placeholder="<?php echo $bank_name; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Update" />
</form>
</td>
</tr>
  
                     
              
         </table>
      </form>
      </div>
      
     
</div>

    </div>
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>

</div>