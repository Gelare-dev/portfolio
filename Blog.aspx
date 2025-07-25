﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Blog.aspx.vb" Inherits="Blog" %>

<!DOCTYPE html>
<html lang="fa">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>وبلاگ با فیلتر و صفحه‌بندی</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.rtl.min.css" rel="stylesheet" />
     <link href="https://cdn.fontcdn.ir/Font/Persian/Vazir/Vazir.css" rel="stylesheet" type="text/css" />
  <style>
    body { direction: rtl; font-family: Vazir, sans-serif; }
    .btn-category.active {
      background-color: #0d6efd;
      color: white;
    }
   
    h1 {
      font-weight: 700;
      letter-spacing: -0.5px;
      line-height: 1.4;
    }
     .link-hover-danger {
    color: #6c757d; /* طوسی */
    transition: color 0.3s ease;
  }

  .link-hover-danger:hover {
    color: #dc3545; /* قرمز بوت‌استرپ */
  }
  </style>

</head>
<body dir="rtl">
  
<section class="  border-bottom border-danger  shadow-lg py-5" >
  <div class=" d-flex flex-column flex-md-row align-items-center  text-center text-md-start ">
    
    <!-- لوگو -->
    <div class="col-lg-4 ">
       
       <img src="images/Comp3.jpg" alt="لوگوی سایت" style="max-height: 380px;">
    </div>
    <!-- محتوای متنی -->

    <div class="col-lg-5 mx-5 ms-md-4 mt-4 mt-md-0">
      <h1 class="display-5 fw-bold">یادگیری آنلاین، ساده و حرفه‌ای</h1>
      <p class="lead mt-3">با دوره‌های تخصصی ما، مهارت‌های خودت رو از پایه تا حرفه‌ای بساز.</p>
     
    </div>
 <div class="col-lg-3  ms-md-4 mt-4 mt-md-0">
   <a href="#courses" class="btn btn-danger mx-2 mt-3 mt-md-0">دیدن دوره‌ها</a>
      <a href="#signup" class="btn btn-outline-danger mt-3 mt-md-0">ثبت‌نام رایگان</a>
 </div>

  </div>
</section>


<section class="py-5 ">
  <div class="container">
    <h2 class="mb-4 ">دسته‌بندی دوره‌ها</h2>
    <div class="row g-4 py-4">
      <div class="col-md-4">
        <div class="card h-100 border-0 shadow">
          <div class="card-body text-center">
            <i class="bi bi-code-slash fs-1 text-primary mb-3"></i>
            <h5>برنامه‌نویسی</h5>
            <p class="text-muted">دوره‌های Python، HTML، C#، JavaScript و بیشتر</p>
            <a href="#" class="stretched-link link-hover-danger ">مشاهده</a>
          </div>
        </div>
      </div>
         <div class="col-md-4">
   <div class="card h-100 border-0 shadow">
     <div class="card-body  text-center">
       <i class="bi bi-code-slash fs-1 text-primary mb-3"></i>
       <h5>برنامه‌نویسی</h5>
       <p class="text-muted">دوره‌های Python، HTML، C#، JavaScript و بیشتر</p>
       <a href="#" class="stretched-link link-hover-danger">مشاهده</a>
     </div>
   </div>
 </div>
         <div class="col-md-4">
   <div class="card h-100 border-0 shadow">
     <div class="card-body  text-center">
       <i class="bi bi-code-slash fs-1 text-primary mb-3"></i>
       <h5>برنامه‌نویسی</h5>
       <p class="text-muted">دوره‌های Python، HTML، C#، JavaScript و بیشتر</p>
   <a href="#" class="stretched-link link-hover-danger">مشاهده</a>
     </div>
   </div>
 </div>
        
      <!-- سایر دسته‌ها... -->
    </div>
  </div>
</section>

<section class="py-5">
  <div class="container">
    <h2 class="mb-4 ">دوره‌های محبوب</h2>
    <div class="row g-4">
      <div class="col-md-4">
        <div class="card h-100">
           
          <img src="images/java.png" class="card-img-top" alt="نام دوره">
          <div class="card-body text-center">
            <h5 class="card-title">آموزش جاوا اسکریپت</h5>
            <p class="card-text">مدرس: علی رضایی</p>
            <p class="fw-bold text-primary">۳۵۰٬۰۰۰ تومان</p>
            <a href="#" class="btn btn-outline-primary w-100">مشاهده دوره</a>
          </div>
        </div>
      </div>
         <div class="col-md-4">
   <div class="card h-100">
      
     <img src="images/java.png" class="card-img-top" alt="نام دوره">
     <div class="card-body text-center">
       <h5 class="card-title">آموزش جاوا اسکریپت</h5>
       <p class="card-text">مدرس: علی رضایی</p>
       <p class="fw-bold text-primary">۳۵۰٬۰۰۰ تومان</p>
       <a href="#" class="btn btn-outline-primary w-100">مشاهده دوره</a>
     </div>
   </div>
 </div>
         <div class="col-md-4">
   <div class="card h-100">
      
     <img src="images/java.png" class="card-img-top" alt="نام دوره">
     <div class="card-body text-center">
       <h5 class="card-title">آموزش جاوا اسکریپت</h5>
       <p class="card-text">مدرس: علی رضایی</p>
       <p class="fw-bold text-primary">۳۵۰٬۰۰۰ تومان</p>
       <a href="#" class="btn btn-outline-primary w-100">مشاهده دوره</a>
     </div>
   </div>
 </div>
      <!-- سایر دوره‌ها... -->
    </div>
  </div>
</section>

<section class="py-5 text-center bg-white">
  <div class="container">
    <div class="row g-4">
      <div class="col-md-4">
        <h3 class="text-primary">۳۵۰۰+</h3>
        <p>دانشجوی فعال</p>
      </div>
      <div class="col-md-4">
        <h3 class="text-primary">۱۲۰</h3>
        <p>دوره آموزشی</p>
      </div>
      <div class="col-md-4">
        <h3 class="text-primary">۹۷٪</h3>
        <p>رضایت کاربران</p>
      </div>
    </div>
  </div>
</section>

<section class="py-5 bg-light text-center">
  <div class="container">
    <h2 class="mb-4">نظر دانشجویان ما</h2>
    <div class="row g-4">
      <div class="col-md-6 mx-auto">
        <div class="card shadow-sm">
          <div class="card-body">
            <blockquote class="blockquote mb-0">
              <p>دوره‌ها بسیار کاربردی بودن و باعث شد بتونم اولین پروژه‌ام رو انجام بدم.</p>
              <footer class="blockquote-footer mt-2">زهرا. ف، دانشجوی دوره پایتون</footer>
            </blockquote>
          </div>
        </div>
      </div>
      <!-- نظرات بیشتر -->
    </div>
  </div>
</section>


</body>
</html>

