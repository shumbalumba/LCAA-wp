<?php get_header(); ?>

<?php get_template_part('elements/site-header'); ?>

<?php
 
if (have_posts()) :

    if (function_exists('dynamic_sidebar') && dynamic_sidebar('Archive Widgets')); 

while(have_posts()) : the_post(); ?>

<div class='posts-wrapper'>
    
        <div class='row posts'>
            <img class='col-sm-8 col-xs-4' src="<?php the_post_thumbnail_url('full'); ?>" alt=''>
                <div class='text col-sm-4 col-xs-8'>
                <h3><?php the_title(); ?></h3>
                    
                <?php the_excerpt(); ?>
                    <div class='button'><a href='<?php the_permalink(); ?>'><?php if (function_exists('dynamic_sidebar') && dynamic_sidebar('Read-more Widget')); ?></a></div>
                </div>
            </div>
</div>



<?php endwhile; ?>

<div class='page-nav'><?php echo paginate_links(); ?></div>
   
<?php
else : 
    echo '<p>No content</p>';

 endif; ?>

        
<?php get_template_part('elements/site-footer'); ?>

<?php get_footer(); ?>


