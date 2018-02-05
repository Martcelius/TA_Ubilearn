<main class="mdl-layout__content mdl-color--grey-100">
<div class="mdl-grid cover-main">
</div>
<div class="mdl-grid"  >
    <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <div class="mdl-card mdl-shadow--2dp " >
            <div class="mdl-card__title">
                <h2>Pengaturan Akun Instruktur</h2>
            </div>
            <div class="mdl-card__supporting-text">
            <div class="container">
            <div class="row">
            <div class="col-md-10 ">
            <form class="form-horizontal">
            <fieldset>
            
            <!-- Form Name -->
            <legend style="color:white;">Isikan data dengan lengkap</legend>
            
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="Name (Full name)">Username</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input id="Name (Full name)" name="Name (Full name)" type="text" placeholder="Name (Full name)" class="form-control input-md">
                        </div>
                    </div>  
            </div>
            
            <!-- File Button --> 
            <div class="form-group">
              <label class="col-md-4 control-label" for="Upload photo">Upload photo</label>
              <div class="col-md-4">
                <input id="Upload photo" name="Upload photo" class="input-file" type="file" onchange="readURL(this);"/>
              </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="Nama Depan">Nama Depan</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input id="Nama Depan" name="Nama Depan" type="text" placeholder="Nama Depan" class="form-control input-md">
                        </div>
                    </div>  
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="Nama Belakang">Nama Belakang</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input id="Nama Belakang" name="Nama Belakang" type="text" placeholder="Nama Belakang" class="form-control input-md">
                        </div>
                    </div>  
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="Password">Password</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </div>
                            <input id="Password" name="Password" type="password" placeholder="Password" class="form-control input-md">
                        </div>
                    </div>  
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label" for="Email Address">Email Address</label>  
                <div class="col-md-4">
                    <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-envelope-o"></i>
                    </div>
                    <input id="Email Address" name="Email Address" type="email" placeholder="Email Address" class="form-control input-md">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="jenis_kelamin">Jenis Kelamin</label>
                <div class="col-md-4"> 
                    <label class="radio-inline" for="jenis_kelamin-0">
                    <input type="radio" name="jenis_kelamin" id="jenis_kelamin-0" value="1">
                    Male
                    </label> 
                    <label class="radio-inline" for="jenis_kelamin-1">
                    <input type="radio" name="jenis_kelamin" id="jenis_kelamin-1" value="2">
                    Female
                    </label> 
                </div>
            </div>
            
            <!-- Text input
            <div class="form-group">
                <label class="col-md-4 control-label" for="Date Of Birth">Date Of Birth</label>  
                <div class="col-md-4">
                    <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-birthday-cake"></i>  
                    </div>
                    <input id="Date Of Birth" name="Date Of Birth" type="text" placeholder="Date Of Birth" class="form-control input-md">
                    </div>
                </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Father">Father's name</label>  
                <div class="col-md-4">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-male" style="font-size: 20px;"></i>
                        </div>
                    <input id="Father" name="Father" type="text" placeholder="Father's name" class="form-control input-md">
                    </div>
                </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Mother">Mother's Name</label>  
                <div class="col-md-4">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-female" style="font-size: 20px;"></i>
                        </div>
                    <input id="Mother" name="Mother" type="text" placeholder="Mother's Name" class="form-control input-md">
                    </div>
                </div>
            </div> -->
            
            <!-- Multiple Radios (inline) -->
            <!-- <div class="form-group">
                <label class="col-md-4 control-label" for="Gender">Gender</label>
                <div class="col-md-4"> 
                    <label class="radio-inline" for="Gender-0">
                    <input type="radio" name="Gender" id="Gender-0" value="1" checked="checked">
                    Male
                    </label> 
                    <label class="radio-inline" for="Gender-1">
                    <input type="radio" name="Gender" id="Gender-1" value="2">
                    Female
                    </label> 
                </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
                <label class="col-md-4 control-label" for="Primary Occupation">Primary Occupation</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-briefcase"></i>
                            </div>
                        <input id="Primary Occupation" name="Primary Occupation" type="text" placeholder="Primary Occupation" class="form-control input-md">
                        </div>
                    </div>
            </div>
             -->
            <!-- Text input-->
            <!-- <div class="form-group">
                <label class="col-md-4 control-label" for="Secondary Occupation (if any)">Secondary Occupation (if any)</label>  
                    <div class="col-md-4">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-briefcase"></i>   
                            </div>
                        <input id="Secondary Occupation (if any)" name="Secondary Occupation (if any)" type="text" placeholder="Secondary Occupation (if any)" class="form-control input-md">
                        </div>
                    </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Skills">Skills</label>  
              <div class="col-md-4">
                <div class="input-group">
                   <div class="input-group-addon">
                    <i class="fa fa-graduation-cap"></i>
                   </div>
                <input id="Skills" name="Skills" type="text" placeholder="Skills" class="form-control input-md">
                </div>
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Phone number ">Phone number </label>  
              <div class="col-md-4">
                <div class="input-group">
                   <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                   </div>
                <input id="Phone number " name="Phone number " type="text" placeholder="Primary Phone number " class="form-control input-md">
                </div>
                <div class="input-group othertop">
                   <div class="input-group-addon">
                    <i class="fa fa-mobile fa-1x" style="font-size: 20px;"></i>
                   </div>
                <input id="Phone number " name="Secondary Phone number " type="text" placeholder=" Secondary Phone number " class="form-control input-md">
                </div>
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Email Address">Email Address</label>  
                <div class="col-md-4">
                    <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-envelope-o"></i>
                    </div>
                    <input id="Email Address" name="Email Address" type="email" placeholder="Email Address" class="form-control input-md">
                    </div>
                </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Availability time">Availability time</label>  
              <div class="col-md-4">
                <div class="input-group">
                   <div class="input-group-addon">
                    <i class="fa fa-clock-o"></i>
                   </div>
                <input id="Availability time" name="Availability time" type="text" placeholder="Availability time" class="form-control input-md">
                </div>
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Available Service Area">Available Service Area</label>  
                <div class="col-md-4">
                    <div class="input-group">
                        <div class="input-group-addon">
                        <i class="fa fa-street-view"></i>
                        </div>
                    <input id="Available Service Area" name="Available Service Area" type="text" placeholder="Available Service Area" class="form-control input-md">
                    </div>
                </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
                <label class="col-md-4 control-label" for="Citizenship No.">Citizenship No.</label>  
                <div class="col-md-4">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-sticky-note-o"></i>
                        </div>
                    <input id="Citizenship No." name="Citizenship No." type="text" placeholder="Citizenship No." class="form-control input-md">
                    </div>
                </div>
            </div> -->
            
            <!-- Multiple Checkboxes -->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Languages Known">Languages Known</label>
              <div class="col-md-4">
              <div class="checkbox">
                <label for="Languages Known-0">
                  <input type="checkbox" name="Languages Known" id="Languages Known-0" value="1">
                  Nepali
                </label>
                </div>
              <div class="checkbox">
                <label for="Languages Known-1">
                  <input type="checkbox" name="Languages Known" id="Languages Known-1" value="2">
                  Newari
                </label>
                </div>
              <div class="checkbox">
                <label for="Languages Known-2">
                  <input type="checkbox" name="Languages Known" id="Languages Known-2" value="3">
                  English
                </label>
                </div>
              <div class="checkbox">
                <label for="Languages Known-3">
                  <input type="checkbox" name="Languages Known" id="Languages Known-3" value="4">
                  Hindi
                </label>
                </div>
            
            <div class="othertop">
                <label for="Languages Known-4">
                </label>
                 <input type="input" name="LanguagesKnown" id="Languages Known-4"  placeholder="Other Language">
                </div>
              </div>
            </div> -->
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="License No.">License No.</label>  
                <div class="col-md-4">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-sticky-note-o"></i>
                        </div>
                    <input id="License No." name="License No." type="text" placeholder="License No." class="form-control input-md">
                    </div>
                </div>
            </div> -->
            
            <!-- Multiple Radios -->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Owns Vehicle">Owns Vehicle?</label>
              <div class="col-md-4">
              <div class="checkbox">
                <label for="Owns Vehicle-0">
                  <input type="checkbox" name="Owns Vehicle" id="Owns Vehicle-0" value="1">
                  4 wheeler
                </label>
                </div>
              <div class="checkbox">
                <label for="Owns Vehicle-1">
                  <input type="checkbox" name="Owns Vehicle" id="Owns Vehicle-1" value="2">
                 Bike
                </label>
                </div>
              <div class="checkbox">
                <label for="Owns Vehicle-2">
                  <input type="checkbox" name="Owns Vehicle" id="Owns Vehicle-2" value="3">
                  Bicycle
                </label>
                </div>
              </div>
            </div> -->
            
            
            <!-- Text input-->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Working Experience (time period)">Working Experience (time period)</label>  
              <div class="col-md-4">
              <div class="input-group">
                   <div class="input-group-addon">
                 <i class="fa fa-clock-o"></i>
                   </div>
                <input id="Working Experience (time period)" name="Working Experience" type="text" placeholder="Enter time period " class="form-control input-md">
                  </div>
              </div>
            </div> -->

            <!-- Textarea -->
            <!-- <div class="form-group">
              <label class="col-md-4 control-label" for="Overview (max 200 words)">Overview (max 200 words)</label>
              <div class="col-md-4">                     
                <textarea class="form-control" rows="10"  id="Overview (max 200 words)" name="Overview (max 200 words)">Overview</textarea>
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-4 control-label" ></label>  
              <div class="col-md-4">
              <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-thumbs-up"></span> Submit</a>
              <a href="#" class="btn btn-danger" value=""><span class="glyphicon glyphicon-remove-sign"></span> Clear</a>
              </div>
            </div> -->
            </fieldset>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-10">
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">Selesai</button>
                    </div>
                </div>
            </form>
            </div>

            <div class="col-md-2 hidden-xs">
                <img src="http://websamplenow.com/30/userprofile/images/avatar.jpg" class="img-responsive img-thumbnail " id="blah">
            </div>
            </div>
            </div>
            </div>
        </div>
    </div>
</div>
</main>

<script>
function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
</script>