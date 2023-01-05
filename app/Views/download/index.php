<?php echo $this->extend('include/base'); ?>
<?php echo  $this->section('title'); ?>
<?php echo  $title ?>
<?php echo  $this->endSection(); ?>
<?php echo  $this->section('base'); ?>

<div class="container">
    <h2>Export Data To Excel</h2>
    <a href="<?= site_url('export-excel') ?>" class="btn btn-success my-4">Export Excel</a>
    <table class="table" id="myTableStudent">
        <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Full name</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col">Course</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if (!empty($tableData)) {
                $i = 1;
                foreach ($tableData as $row) {
            ?>
                    <tr>
                        <td><?= $i ?></td>
                        <td><?php echo $row['fullname'] ?></td>
                        <td><?php echo $row['email'] ?></td>
                        <td><?php echo $row['phone'] ?></td>
                        <td><?php echo $row['course'] ?></td>
                    </tr>
            <?php $i++;
                }
            }
            ?>
        </tbody>
    </table>
    <a href="/" class=" mt-3">
        <i class="fa fa-arrow-left"></i>
        Quay về home
    </a>
</div>
<?php echo  $this->endSection(); ?>