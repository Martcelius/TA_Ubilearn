<main class="mdl-layout__content">
	<div class="mdl-grid cover-main">
		<div class="mdl-cell mdl-cell--12-col">
		<h1 style="color:white">Content</h1><br>
			<h1 style="color:white"><?php echo $dataCourse->crs_name?></h1><br>
			<h2 style="color:white"><?php echo $lesson->lsn_name; ?></h2>
		</div>
	</div>
	<div class="mdl-grid">
	<?php if ($this->session->flashdata('data_content') == TRUE): ?>
    <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
        </button>
        <p><?php echo $this->session->flashdata('data_content')?></p>
    </div>
    <?php endif; ?>
        <?php if ($this->session->flashdata('insert_content') == TRUE): ?>
            <div role="alert" class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
                <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
                </button>
                <p><?php echo $this->session->flashdata('insert_content')?></p>
            </div>
        <?php endif; ?>
      <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
      <a href="<?php echo site_url('instruktur/add_content/'.$lesson->lsn_id) ?>"><button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-blue">
          <i class="material-icons">add</i>
          Tambah Content
      </button></a>
      </div>
    </div>
	<div class="mdl-grid">
			<div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-cell--12-col-phone">
				<div class="mdl-card">
					<div class="mdl-card__title">
						<h2 class="mdl-card__title-text" style="color:white"><?php echo $lesson->lsn_name; ?></h2>
					</div>
                    <ol class="mdl-list">
						<?php foreach ($dataContent as $content):?>
						<li class="mdl-list__item">
							<span class="mdl-list__item-primary-content">
								<span style="margin-right: 25px;"></span>
								<i class="material-icons mdl-list__item-icon"><?php if($content->cnt_type == 'Text') echo "file_download"; else if($content->cnt_type == 'Video') echo "play_circle_filled";
								else echo "file_download";?></i>
								<?php echo $content->cnt_name;?>
							</span>
                            <div class="mdl-layout-spacer"></div>
                            <b class="mdl-list__item-secondary-action" style="margin-right:50px"><?php echo $content->cnt_type?></b>
							<a href="<?php echo site_url('instruktur/edit_content/'.$content->cnt_id);?>" >
								<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-yellow" >
								<i class="material-icons">drafts</i>
								Edit
								</button>
							</a>

							<a href="<?php echo site_url('instruktur/delete_content/'.$content->cnt_id);?>" >
								<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-red" onclick="return confirm('Anda yakin untuk menghapus?');">
								<i class="material-icons">delete</i>
								Hapus
								</button>
							</a>
							
						</li>
						<?php endforeach;?>
					</ol>
				</div>
				<br>
			</div>	
	</div>
	
</main>

