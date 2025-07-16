<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base href="../../../" />
    <meta charset="utf-8" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <title>پرسنلی</title>
    <style>
        select {
            width: 200px;
            padding: 8px;
            font-size: 16px;
        }
    </style>
    <style>
   P:hover {
   color: blue ;
   font-size: 18px;
   cursor: pointer;
}
</style>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        .bgcolor {
            background-color: #fff;
        }

        th, td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        nk-tb-item {
            background-color: red;
            transition: background-color 0.3s, box-shadow 0.3s;
            display: table-row;
        }
        /* tr:hover {background: #f8f9fc;transition: background-color 0.3s, box-shadow 0.3s;
             display: table-row; box-shadow: 0 0 10px -4px rgba(54, 74, 99, 0.2);}*/
        .nk-tb-item:hover {
            background: #cdced32e;
            box-shadow: 0 0 10px -4px rgba(54, 74, 99, 0.2);
        }
    </style>
    <%-- <link rel="shortcut icon" href="./images/favicon.png" />--%>
    <link rel="stylesheet" href="https://egov.officeirib.ir/AssetsForAPP/assets/css/dashlite.rtl.css" />
    <link rel="stylesheet" href="https://egov.officeirib.ir/AssetsForAPP/assets/css/theme.css" />
    <link href="Content/smart_wizard_all.min.css" rel="stylesheet" type="text/css" />
    <style>
        .bg {
        background-color:azure;
        }
    </style>
    <style>
    .brd {
        border-color:coral;
   
    }
</style>
</head>
<body class="has-rtl nk-body npc-default has-apps-sidebar has-sidebar" dir="rtl">



    <%--  <div class="nk-content">

        <div class="components-preview wide-max md-auto">--%>

    <%-- <div class="nk-block nk-block-lg">--%>
   
    <form id="form1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class=" pt-0 ">
            <%--<asp:UpdatePanel runat="server" ID="UpdatePanelGrid">
                <ContentTemplate>--%>
                    <div class="row g-1 mx-3 ">
                        <div class="col-sm-2 col-md-2 col-lg-2">
 
                            <div class="col-md-12 col-lg-12 ">
                                  <h10 class="center" >پرونده های پرسنلی</h10>
                               <%-- <div class="">--%>
                                                                 
                                    <asp:TextBox ID="Txt_PersonelId" type="number" name="Txt_PersonelId" runat="server" class="form-control "  placeholder="جستجو"></asp:TextBox>
                               <%-- </div>--%>
                            </div>
                                                                  
                            <div  class="col-sm-12 col-md-12 col-lg-12    ">
                                                                                                 
                             <%--   <asp:Repeater   ID="GVHouseL" runat="server">    --%>                  
                                    <ItemTemplate>
                                        <div class="row my-1 ">
                                         <div id="Border1" onclick="ChengColorBorder_Click(Num1)"  class=" card card-bordered  right col-sm-4 col-md-4 col-lg-4 " style="margin-top:0px;margin-right:12px;">
                                       
                                             <asp:Image  src="images/person.jpg"  ID="Image1" class="position-absolute top-0 start-0 w-100 h-200 object-fit-cover" runat="server" />
                                       </div>
                                      
                                            <div id="Num1" onclick="ChengColor_Click(Num1)"  alt="Preview"  class="card card-bordered col-sm-7 col-md-7 col-lg-7" style="margin-top:0px;  ">
                                               
                                               
                                                            <div id="ButtonLeft" class=" ButtonLeft col-sm-12 col-md-12 col-lg-12 " style="margin-top:40px;margin-right:12px;">
                                                             
                                                              <p   data-bs-toggle="dropdown" class="my-1" style="font-size: 11px; font-weight: bold;">81112990-رها-امیدوار</p>
                                                              <%-- onclick="colorFunction(Num<%#DataBinder.Eval(Container.DataItem, "_idPersoneli")%>)" background-color:azure  <asp:LinkButton ID="LinkBtnPID" runat="server" Font-Size="x-Small" data-bs-toggle="dropdown" CommandName="Outdoor" ><%#DataBinder.Eval(Container.DataItem, "_PersonelId")%>-<%#DataBinder.Eval(Container.DataItem, "_Name")%>-<%#DataBinder.Eval(Container.DataItem, "_FName")%></asp:LinkButton>
                         --%>
                                                             
 
                                      <ul id="Menu1" class="dropdown-menu " aria-labelledby="btnGroupVerticalDrop1" style="">
                                          <li>
                                              <input id="BtnManaginfo" class="btn btn-outline-primary dropdown-item " type="button" value="اطلاعات هویتی " onclick="Showiframe_Vabaste(Menu1)" 81112990/>
                                            <%--  <asp:Button ID="BtnManaginfo" class="btn btn-outline-primary dropdown-item" runat="server" OnClientClick="EnableFunctionAele()" Text="اطلاعات هویتی" />--%>

                                          </li>
                                          <li>
                                               <input id="BtnEmploystatus" class="btn btn-outline-primary dropdown-item" type="button" value="وضعیت اشتغال " onclick="Showiframe_Vabaste(Menu1)" />
                                            <%--  <asp:Button ID="BtnEmploystatus" class="btn btn-outline-primary dropdown-item" runat="server" OnClientClick="EnableFunctionAele()" Text="وضعیت اشتغال" />--%>

                                          </li>
                                          <li>
                                              <input id="BtnDegree" class="btn btn-outline-primary dropdown-item" type="button" value="مدرک تحصیلی" onclick="Showiframe_Vabaste(Menu1)" />
                                           <%--   <asp:Button ID="BtnDegree" class="btn btn-outline-primary dropdown-item" runat="server" OnClientClick="EnableFunctionAele()" Text="مدرک تحصیلی" />--%>

                                          </li>
                                          <li>
                                               <input id="BtnJob" class="btn btn-outline-primary dropdown-item" type="button" value="شغل" onclick="Showiframe_Vabaste(Menu1)" />
                                             <%-- <asp:Button ID="BtnJob" class="btn btn-outline-primary dropdown-item" runat="server" OnClientClick="EnableFunctionAele()" Text="شغل" />--%>

                                          </li>
                                          <li>
                                              <input id="BtnOrganpost" class="btn btn-outline-primary dropdown-item" type="button" value="پست سازمانی" onclick="Showiframe_Vabaste(Menu1)" />
                                             <%-- <asp:Button ID="BtnOrganpost" class="btn btn-outline-primary dropdown-item" runat="server" OnClientClick="EnableFunctionAele()" Text="پست سازمانی" />--%>

                                          </li>
                                          <li>
                                              <input id="BtnVabaste" class="btn btn-outline-primary dropdown-item" type="button" value="وابستگان" onclick="Showiframe_Vabaste(Menu1)" 81112990 />
                                             <%-- <asp:Button ID="BtnVabaste" class="btn btn-outline-primary dropdown-item" runat="server" OnClientClick="Showiframe()" Text="وابستگان" />--%>

                                          </li>
                                       
                                      </ul>
                                                    
         </div>
                                                       
                                                            <div class="col-sm-12 col-md-12 col-lg-12">
                                                                <%-- <asp:Label ID="Label8" Font-Size="Small" runat="server" Text="استخدام:"></asp:Label>--%>
                                                                <asp:Label ID="Label6"  Font-Size="xx-Small" class="form-label " runat="server" Text='رسمی'></asp:Label></li>
                                                                 <asp:Label ID="Label1"  Font-Size="xx-Small" class="form-label " runat="server" Text='-'></asp:Label></li>
                                                            <asp:Label ID="Label5" Font-Size="x-Small" class="form-label " runat="server" Text='تهران'></asp:Label></li>
                                                                </div>
                                                          <%--  <div class="col-sm-12 col-md-12 col-lg-12">
                                                             <%--  <asp:Label ID="Label9" Font-Size="Small" runat="server" Text="مرکز:"></asp:Label>--%>
                                                               
<%--                                                            </div>--%>

                                                                                                    

                                            </div>
                                    </div>
                                    </ItemTemplate>
                              <%--  </asp:Repeater>--%>
                                                                
    </div>

                                                           
                     
                        </div>
                        <div class="col-sm-10 col-md-109 col-lg-10 .bg-light ">
                         
                             <iframe  id="iframePersonel"  src="images/J_galleries.jpeg" class="  vh-100 col-sm-12 col-md-12 col-lg-12" title="Iframe Example"></iframe>

                        </div>
              
        </div>
           

                    </div>
       <%-- <input id="Hid_selectedid" type="text" value="Num0" />--%>
        <input id="Hid_selectedid" type="hidden"  value="Num0" />
        <asp:Button runat="server" data-bs-dismiss="modal" class="d-none" data-bs-toggle="modal" data-bs-target="#modalDefault" ID="Button7" Text="پیش فرض" />
        <asp:Button runat="server" data-bs-dismiss="modal" class="d-none" data-bs-toggle="modal" data-bs-target="#modalDefaultRelate" ID="Button8" Text="پیش فرض" />
        <asp:Button runat="server" data-bs-dismiss="modal" class="d-none" data-bs-toggle="modal" data-bs-target="#modalDefaultAddRelate" ID="Button9" Text="پیش فرض" />
        <asp:Button runat="server" data-bs-dismiss="modal" class="d-none" data-bs-toggle="modal" data-bs-target="#modalDefaultAddAele" ID="Button10" Text="پیش فرض" />
    </form>
   

    <script src="https://egov.officeirib.ir/AssetsForAPP/js/jquery-3.7.1.js"></script>
    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/bundle.js"></script>
    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/scripts.js"></script>
    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/editors.js"></script>

    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/persiandate.min.js" type="text/javascript"></script>
   <%-- <script>
        $(document).ready(function () {
            $("p").(function () {
              /*  $(this).css("background-color", "yellow");*/
                $(this).addClass('PriceHover text-info ');
            }, function () {
                $(this).removeClass('PriceHover text-info ');
               /* $(this).css("background-color", "white");*/
            });
        });
    </script>--%>
    <script>
        function ChengColorBorder_Click(id) {

            //  debugger;
            var borderId = id.id;
            var sit = 1;
          /*  var Hid_selectedid = document.getElementById("Hid_selectedid").value;*/
            /* alert(((SelectetId != Hid_selectedid) && (Hid_selectedid == "Num0")));*/
            if (sit==1) {
                const element = document.getElementById(borderId)
                element.className = " card card-bordered  right col-sm-4 col-md-4 col-lg-4 brd";
                //const element1 = document.getElementById(Hid_selectedid)
                //element1.className = "card card-bordered Left col-sm-7 col-md-7 col-lg-7";
                //document.getElementById("Hid_selectedid").value = SelectetId;

            //} else if ((SelectetId != Hid_selectedid) && (Hid_selectedid == "Num0")) {

            //    const element = document.getElementById(SelectetId)
            //    element.className = "bg card card-bordered Left col-sm-7 col-md-7 col-lg-7";

            //    document.getElementById("Hid_selectedid").value = SelectetId;

            //    /*  alert(Hid_selectedid);*/
            //}

        }
       
    </script>
    
    <script>

      function ChengColor_Click(id) {

         //  debugger;
          var SelectetId = id.id;
          var Hid_selectedid = document.getElementById("Hid_selectedid").value;
          var borderId = id.id;
          var sit = 1;
          /*  var Hid_selectedid = document.getElementById("Hid_selectedid").value;*/
          /* alert(((SelectetId != Hid_selectedid) && (Hid_selectedid == "Num0")));*/
          if (sit == 1) {
              const element2 = document.getElementById("Border1")
              element2.className = "card card-bordered  right col-sm-4 col-md-4 col-lg-4 brd";
          }
         /* alert(((SelectetId != Hid_selectedid) && (Hid_selectedid == "Num0")));*/
          if ((SelectetId != Hid_selectedid) && (Hid_selectedid !="Num0")) {
              const element = document.getElementById(SelectetId)
              element.className = "bg card card-bordered Left col-sm-7 col-md-7 col-lg-7";
              const element1 = document.getElementById(Hid_selectedid)
              element1.className = "card card-bordered Left col-sm-7 col-md-7 col-lg-7";
              document.getElementById("Hid_selectedid").value = SelectetId;
         
          } else if ((SelectetId != Hid_selectedid) && (Hid_selectedid == "Num0")) {
           
              const element = document.getElementById(SelectetId)
              element.className = "bg card card-bordered Left col-sm-7 col-md-7 col-lg-7";
           
              document.getElementById("Hid_selectedid").value = SelectetId;
            
            /*  alert(Hid_selectedid);*/
          }
      
        }
    </script>
   <%--  <script> 
         $(document).ready(function (id) {
             var toggle = true; // Toggle state 
             var idd = 0;
             $("p").on({
                 click: function () {
                     if (id!=idd) {
                         // Change background to red 
                         $(this).css("background-color", "PowderBlue");
                         var idd = id;
                        /* toggle = false;*/
                     } else {

                         // Change background to default 
                         $(this).css("background-color", "white");
                         //toggle = true;
                       /*  document.getElementById("Menu").className = "dropdown-menu ";*/
                     }
                 }
             });
         });
     </script> --%>
  <%--  <script>
        function colorFunction() {
            document.getElementById("Nam"). = "YOU CLICKED ME!";
        }
    </script>--%>
    
   <%-- <script>
        $(function () {
            $('.ButtonLeft').hover(function () {
                $(this).find('GVHouseL').addClass('PriceHover text-warning');

            }, function () {
                $(this).find('outdoor').removeClass('PriceHover text-warning');
            });

        });

    </script> --%>  
     <script>
         function Showiframe_Managinfo(id) {

             //  var site = 'Document_Vabaste.aspx';
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";

             iframe1.src = site;
           /*  alert(iframe1.src)*/
            /* debugger;*/
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
         }
         function Showiframe_Employstatus(id) {

             //  var site = 'Document_Vabaste.aspx';
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";

             iframe1.src = site;
             //alert(iframe1.src)
             //debugger;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
         }
         function Showiframe_Degree(id) {

             //  var site = 'Document_Vabaste.aspx';
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";

             iframe1.src = site;
             //alert(iframe1.src)
             //debugger;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
         }
         function Showiframe_Job(id) {

             //  var site = 'Document_Vabaste.aspx';
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";

             iframe1.src = site;
             //alert(iframe1.src)
             //debugger;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
         }
         function Showiframe_Organpost(id){

             //  var site = 'Document_Vabaste.aspx';
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";

             iframe1.src = site;
             //alert(iframe1.src)
             //debugger;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
         }
         function Showiframe_Aele(id) {
           
             //  var site = 'Document_Vabaste.aspx';
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";
            
             iframe1.src = site;
             //alert(iframe1.src)
             //debugger;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
                     }
         function Showiframe_Vabaste(id) {
           
           //  var site = 'Document_Vabaste.aspx';
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";
             iframe1.src = site;
             //alert(id.id);
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
            
             
         }
         function Showiframe_Isargari(id) {
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";
             iframe1.src = site;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
            
         }
         function Showiframe_Skill(id) {
            
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";
             iframe1.src = site;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
            
         }
         function Showiframe_Soldier(id) {
          
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";
             iframe1.src = site;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
           
         }
         function Showiframe_serviceYear(id) {
            
             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";
             iframe1.src = site;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
             
         }
         function Showiframe_ShortDoucument(id) {

             var iframe1 = document.getElementById("iframePersonel");
             var site = "http://localhost:59875/Default.aspx";
             iframe1.src = site;
             const element = document.getElementById(id.id);  // Get the DIV element
             element.classList.remove("show"); // Remove mystyle class from DIV
         }
     </script>
    <script>
        function EnableFunctionNoTel() {

            var checkBox = document.getElementById("CheckNoTel");

            if (checkBox.checked == true) {
                document.getElementById("divTel").className = "col-sm-5 d-none";
                document.getElementById("CheckYesTel").checked = false;
            } else {

                document.getElementById("divTel").className = " col-sm-5 ";

            }
        }
    </script>


    <script>
        function EnableFunctionRelate() {
            $('#modalDefaultRelate').modal('show');

            //document.getElementById("Aele").className = "form-group col-md-12 d-none";
            //document.getElementById("AddRelate").className = "form-group col-md-12 d-none";
            //document.getElementById("AddAele").className = "form-group col-md-12 d-none";
            //document.getElementById("Relate").className = "form-group col-md-12";

        }
    </script>
    <script>
        function EnableFunctionAddRelate() {

            document.getElementById("Aele").className = "form-group col-md-12 d-none";
            document.getElementById("AddRelate").className = "form-group col-md-12 ";
            document.getElementById("AddAele").className = "form-group col-md-12 d-none";
            document.getElementById("Relate").className = "form-group col-md-12 d-none";

        }
    </script>
    <script>
        function EnableFunctionAddAele() {

            document.getElementById("Aele").className = "form-group col-md-12 d-none";
            document.getElementById("AddRelate").className = "form-group col-md-12 d-none";
            document.getElementById("AddAele").className = "form-group col-md-12 ";
        }
    </script>
    <script>
        function EnableFunctionAele() {

            $('#modalDefault').modal('show');
            //document.getElementById("Aele").className = "form-group col-md-12 ";
            //document.getElementById("AddRelate").className = "form-group col-md-12 d-none";
            //document.getElementById("AddAele").className = "form-group col-md-12 d-none ";
        }
    </script>
    <script>
        function EnableFunctionYesTel() {
            var checkBox = document.getElementById("CheckYesTel");
            if (document.getElementById("CheckYesTel").checked == true) {
                document.getElementById("divTel").className = "col-sm-5";
                document.getElementById("CheckNoTel").checked = false;

            } else {
                document.getElementById("divTel").className = "col-sm-5 d-none";
            }
        }
    </script>
    <script>

            $("#FileUpload2").on("change", function () {
                var files = $(this)[0].files;
                $("#preview-container1").empty();
                if (files.length > 0) {
                    for (var i = 0; i < files.length; i++) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            $("<div  class='preview  '><img style=" + 'width:30%' + "   src='" + e.target.result + "'></br><button  class='delete btn  icon ni ni-cross d-flex justify-content-center'>حذف</button></div>").appendTo("#preview-container1");
                        };
                        reader.readAsDataURL(files[i]);
                    }
                }
            });
            $("#preview-container1").on("click", ".delete", function () {
                $(this).parent(".preview").remove();
                $("#FileUpload2").val(""); // Clear input value if needed
            });
    </script>
    <%--<script>
    // server.js
    const express = require('express');
    const app = express();
    const port = 3000;

    // داده‌های نمونه برای جدول
    const dataTable = [
        { id: 1, name: 'محصول ۱', price: '۱۰۰۰۰ تومان' },
        { id: 2, name: 'محصول ۲', price: '۲۰۰۰۰ تومان' },
        { id: 3, name: 'محصول ۳', price: '۳۰۰۰۰ تومان' }
    ];

    // Endpoint برای برگرداندن داده‌های جدول
    app.get('/api/data', (req, res) => {
        res.json(dataTable);
    });

    app.listen(port, () => {
        console.log(`سرور در حال اجرا است: http://localhost:${port}`);
    });
</script>
<script>
    // تابع برای دریافت داده‌ها از سرور و ایجاد منو
    async function fetchDataAndCreateMenu() {
        const menu = document.getElementById("menu");

        try {
            // دریافت داده‌ها از سرور
            const response = await fetch('http://localhost:3000/api/data');
            const data = await response.json();

            // ایجاد گزینه‌های منو بر اساس داده‌ها
            data.forEach(item => {
                const option = document.createElement("option");
                option.value = item.id; // مقدار value می‌تواند ID یا هر چیز دیگری باشد
                option.text = item.name; // متن نمایشی در منو
                menu.appendChild(option);
            });
        } catch (error) {
            console.error('خطا در دریافت داده‌ها:', error);
        }
    }

    // فراخوانی تابع پس از لود صفحه
    window.onload = fetchDataAndCreateMenu;
</script>--%>
</body>
</html>
