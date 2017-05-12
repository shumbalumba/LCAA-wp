<?php
 
get_template_part('elements/site-header'); 

get_header();

?>
<?php 

if (have_posts()) :
    while(have_posts()) : the_post(); ?>

                <div class='single-content'>
                
                <?php the_content(); ?>
                    
                </div>


<?php endwhile;

else :
    echo '<p>No content</p>';

 endif; ?>


<?php 

get_template_part('elements/site-footer');

get_footer(); 

?>