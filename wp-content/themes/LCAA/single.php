<?php get_header(); ?>

<?php get_template_part('elements/site-header'); ?>


<?php
 
if (have_posts()) :
    while(have_posts()) : the_post(); ?>


        <div class='single'>
            <img class='single-img' src="<?php the_post_thumbnail_url('full'); ?>" alt=''>
                <div class='single-content'>
                <h3><?php the_title(); ?></h3><span class='post-info'><?php the_time('F j, Y'); ?></span>
                <?php the_content(); ?>
                    
                </div>
            </div>




<?php endwhile;

else :
    echo '<p>No content</p>';

 endif; ?>


<?php get_template_part('elements/site-footer'); ?>

<?php get_footer(); ?>
