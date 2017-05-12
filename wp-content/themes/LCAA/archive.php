<?php get_header(); ?>

<?php get_template_part('elements/site-header'); ?>

<?php
 
if (have_posts()) :
?>

<span class='some-info'><?php
    
    if ( is_category() ) {
        singe_cat_title;
    } elseif ( is_tag() ) {
        single_tag_title;
    } elseif (is_author() ) {
        the_post();
        echo 'Author Archives: ' . get_the_author();
        rewind_posts();
    } elseif ( is_day() ) {
        echo get_the_date();
    } elseif ( is_month() ) {
        echo get_the_date('F Y');
    } elseif ( is_year() ) {
        echo get_the_date('Y');
    } else {
        echo 'Archives:';
    }
    
    ?></span>

<?php    while(have_posts()) : the_post(); ?>

<div class='posts-wrapper'>
        <div class='row posts'>
            <img class='col-sm-8 col-xs-4' src="<?php the_post_thumbnail_url('full'); ?>" alt=''>
                <div class='text col-sm-4 col-xs-8'>
                <h3><?php the_title(); ?></h3>
                    
                <?php the_content(); ?>
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


