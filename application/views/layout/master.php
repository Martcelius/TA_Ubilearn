<!doctype html>
<!--
  Material Design Lite
  Copyright 2015 Google Inc. All rights reserved.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License
-->
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>

   <?php $this->load->view('layout/header'); ?>
   
</head>
<body>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header is-small-screen">
    <header class="mdl-layout__header">
        <div class="mdl-layout__header-row">
           
           <?php $this->load->view('layout/navbar'); ?>
        
        </div>
    </header>

<!-- side bar -->
    <div class="mdl-layout__drawer">
       
       <?php $this->load->view('layout/sidebar'); ?>
    
    </div>
<!-- end sidebar -->
<!-- main -->

    <?php $this->load->view($content); ?>
        
<!-- end main -->
</div>

<!-- inject:js -->
    <?php $this->load->view('layout/script');?>
<!-- endinject -->

</body>
</html>
