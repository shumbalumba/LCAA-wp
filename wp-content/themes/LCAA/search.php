<?php get_header(); ?>

<?php get_template_part('elements/site-header'); ?>

<?php
 
if (have_posts()) : ?>

<div class='some-info'>
        <h4><?php the_search_query(); ?>:</h4>
    </div>

  <?php  while(have_posts()) : the_post(); ?>


<div class='posts-wrapper'>
      
        <div class='row posts'>
            <img class='col-sm-8 col-xs-4' src="<?php the_post_thumbnail_url('full'); ?>" alt=''>
            
                <div class='text col-sm-4 col-xs-8'>
                <h3><?php the_title(); ?></h3>
                    
                <?php the_excerpt(); ?>
                    <div class='button'><a href='<?php the_permalink(); ?>'>Skaityti Daugiau</a></div>
                </div>
        </div>
</div>



<?php endwhile;

echo paginate_links();

else :
    echo '<p>No content</p>';

 endif; ?>

        
<?php get_template_part('elements/site-footer'); ?>

<?php get_footer(); ?>


