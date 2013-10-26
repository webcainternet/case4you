<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
  <div class="box-container">
    <h1><?php echo $heading_title; ?></h1>
    <h2><?php echo $text_address_book; ?></h2>
    <?php foreach ($addresses as $result) { ?>
    <div class="content">
      <table style="width: 100%;">
        <tr>
          <td><?php echo $result['address']; ?></td>
          <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="button"><span><?php echo $button_edit; ?></a></span> &nbsp; <a href="<?php echo $result['delete']; ?>" class="button"><span><?php echo $button_delete; ?></span></a></td>
        </tr>
      </table>
    </div>
    <?php } ?>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button-back-left"><span><?php echo $button_back; ?></span></a></div>
      <div class="right"><a href="<?php echo $insert; ?>" class="button-cont-right"><span><?php echo $button_new_address; ?></span></a></div>
    </div>
    </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>