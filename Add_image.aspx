<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Add_image.aspx.vb" Inherits="Add_image" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <base href="../../../" />
    <meta charset="utf-8" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <title>Add photos and upload files to store in the database</title>

    <%-- <link rel="shortcut icon" href="./images/favicon.png" />--%>
    <link rel="stylesheet" href="https://egov.officeirib.ir/AssetsForAPP/assets/css/dashlite.rtl.css" />
    <link rel="stylesheet" href="https://egov.officeirib.ir/AssetsForAPP/assets/css/theme.css" />
    <link href="Content/smart_wizard_all.min.css" rel="stylesheet" type="text/css" />

</head>
<body class="has-rtl nk-body npc-default has-apps-sidebar has-sidebar" dir="rtl">

    <div class="nk-content">
        <div class="nk-block nk-block-md">
            <h9 class="center">Add photos and upload files to store in the database</h9>
            <form id="form1" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div>
                    <asp:UpdatePanel runat="server" ID="UpdatePanelGrid">
                        <ContentTemplate>

                            <div class="row-2">
                                <div class="col-sm-12">
                                    <!-- عنوان -->
                                    <span class="input-group-text">لطفا اسکن مدارک را بارگزاری کنید</span>

                                    <!-- ورودی فایل (مخفی) -->
                                    <div class="form-file">
                                        <input id="imageupload" type="file" multiple style="display: none;">
                                        <label class="form-file-label text-center text-muted" for="imageupload">
                                            بارگزاری مستندات
                                        </label>

                                        <!-- پیام هشدار -->
                                        <asp:Label ID="Label1" class="badge badge-dot bg-primary text-danger" runat="server" Text=""> </asp:Label>
                                        <div id="Div_upload2" class="d-none">
                                            <label class="badge badge-dot bg-primary text-danger" id="lbl1">
                                                لطفا فایل خواسته شده را بارگزاری نمایید.
                                            </label>
                                        </div>

                                        <!-- پیش‌نمایش عکس (تک عکس سمت سرور در ASP.NET) -->
                                        <div class="form-group">
                                            <div class="form-control-wrap">
                                                <div class="form-file">
                                                    <div id="FileUploadwin2" class="row">
                                                        <asp:Image ID="Image1" runat="server" class="form-group" Style="width: 70%" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- نمایش عکس‌های آپلودشده -->
                                    <ul id="image-collection" class="list-unstyled d-flex flex-wrap mt-2"></ul>
                                </div>
                            </div>

                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>





                <asp:Button runat="server" data-bs-dismiss="modal" class="d-none" data-bs-toggle="modal" data-bs-target="#modalDefault" ID="Button7" Text="پیش فرض" />
                <asp:Button runat="server" data-bs-dismiss="modal" class="d-none" data-bs-toggle="modal" data-bs-target="#modalDefaultRelate" ID="Button8" Text="پیش فرض" />
                <asp:Button runat="server" data-bs-dismiss="modal" class="d-none" data-bs-toggle="modal" data-bs-target="#modalDefaultAddRelate" ID="Button9" Text="پیش فرض" />
                <asp:Button runat="server" data-bs-dismiss="modal" class="d-none" data-bs-toggle="modal" data-bs-target="#modalDefaultAddAele" ID="Button10" Text="پیش فرض" />
            </form>
        </div>
    </div>


    <script src="https://egov.officeirib.ir/AssetsForAPP/js/jquery-3.7.1.js"></script>
    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/bundle.js"></script>
    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/scripts.js"></script>
    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/editors.js"></script>

    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="https://egov.officeirib.ir/AssetsForAPP/assets/js/persiandate.min.js" type="text/javascript"></script>
    <script>

        const fileUploadLimit = 5 * 1024 * 1024; // حداکثر ۵ مگابایت
        let selectedFiles = [];

        $(document).ready(function () {
            const $upload = $("#imageupload");
            const $imageCollection = $("#image-collection");

            $upload.on("change", function (e) {
                e.preventDefault();
                $upload.next("p").remove();

                const files = e.target.files;
                if (!files.length) return;

                Array.from(files).forEach((file) => {
                    if (file.size <= fileUploadLimit) {
                        // ساخت شناسه یکتا و ذخیره فایل
                        file._customId = Date.now() + Math.random();
                        selectedFiles.push(file);

                        const reader = new FileReader();
                        reader.onloadend = () => {
                            const imageObj = {
                                name: file.name,
                                file_base64: reader.result,
                                id: file._customId
                            };
                            renderImage(imageObj, $imageCollection);
                        };
                        reader.readAsDataURL(file);
                    } else {
                        $upload.after(`<p class="text-danger small">فایل '${file.name}' خیلی بزرگ است.</p>`);
                    }
                });

                $upload.val(""); // پاک کردن input
            });

            function renderImage(imageObj, $container) {
                const imageItem = `
                <li class="m-2 border rounded p-2 text-center position-relative" style="width: 150px;" data-id="${imageObj.id}">
                    <img src="${imageObj.file_base64}" class="img-fluid rounded" style="max-height:100px;" />
                    <div class="small mt-1 text-truncate" style="font-size: 11px;" title="${imageObj.name}">
                        ${imageObj.name}
                    </div>
                    <button type="button" class="btn btn-sm btn-danger mt-1 btn-delete" data-id="${imageObj.id}">
                        حذف
                    </button>
                </li>`;
                $container.append(imageItem);
            }

            // حذف تصویر و فایل از selectedFiles
            $(document).on("click", ".btn-delete", function () {
                const id = $(this).data("id");

                // حذف از DOM
                $(`li[data-id='${id}']`).remove();

                // حذف از آرایه فایل‌ها
                selectedFiles = selectedFiles.filter(file => file._customId !== id);
            });

            // اگر خواستی دکمه ارسال به سرور هم اضافه کنیم، بگو 👇
        });
    </script>




</body>
</html>

