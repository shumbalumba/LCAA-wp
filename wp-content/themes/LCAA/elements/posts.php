<?php
 
if (have_posts()) :
    while(have_posts()) : the_post(); ?>

<div class='posts-wrapper'>
        <div class='row posts'>
            <img class='col-sm-8 col-xs-4' src="images/13259991_1739699542967682_3301546738519837152_n.jpg" alt=''>
                <div class='text col-sm-4 col-xs-8'>
                <h3><?php the_title(); ?></h3>
                <?php the_content(); ?>
                    <div class='button'><a href='<?php the_permalink(); ?>'>Skaityti Daugiau</a></div>
                </div>
            </div>
</div>



<?php endwhile;

else :
    echo '<p>No content</p>';

 endif; ?>
