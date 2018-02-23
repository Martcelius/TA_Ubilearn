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
    <div role="alert"  class="alert alert-success alert-dismissible fade in mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--2-offset-tablet mdl-cell--12-col-phone"> 
        <button aria-label="Close" data-dismiss="alert" class="close" type="button"><span aria-hidden="true" class="fa fa-times"></span>
        </button>
        <p><?php echo $this->session->flashdata('data_content')?></p>
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
						<h2 class="mdl-card__title-text"style="color:white"><?php echo $lesson->lsn_name; ?></h2>
					</div>
					<p class="mdl-card__supporting-text" style="color:white; font-size:14px;">
                    <?php echo $lesson->lsn_intro; ?>
                    </p>   
                    <ol class="mdl-list">
						<?php foreach ($dataContent as $content):?>
						<li class="mdl-list__item">
							<span class="mdl-list__item-primary-content">
								<span style="margin-right: 25px;"></span>
								<i class="material-icons mdl-list__item-icon">label</i>
								<?php echo $content->cnt_name;?> 
								<?php if(empty($content->cnt_type)):?>
									<b></b>
									<?php else :?>
								<b> (<?php echo $content->cnt_type?>)</b>
								<?php endif;?>
							</span>
							<a href="<?php echo site_url('instruktur/edit_content/'.$content->cnt_id);?>" >
								<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-yellow" >
								<i class="material-icons">drafts</i>
								Edit
								</button>
							</a>

							<a href="<?php echo site_url('instruktur/delete_content/'.$content->cnt_id);?>" >
								<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored-red">
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

