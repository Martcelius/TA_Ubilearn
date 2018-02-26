<main class="mdl-layout__content">
  <div class="mdl-grid cover-main">
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
          <div class="">
              <div class="">
                  <h2 style="color:white">Overview</h2>
              </div>
              <div class="">
                  <h2 style="color:white">Welcome to TelC Learning</h2>
              </div>
          </div>
    </div>
  </div>
    <?php if ($this->session->flashdata('password_tersimpan') == TRUE): ?>
        <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
            <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
            </button>
            <p><?php echo $this->session->flashdata('password_tersimpan')?></p>
        </div>
    <?php endif; ?>
  
  
</main>

