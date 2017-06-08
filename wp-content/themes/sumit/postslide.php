<?php
/*
 * Template Name: post slider
 * Description: Page template without sidebar
 */

get_header(); ?>

<!-- Pop up section -->
<div id="pop-up" class="pop-up">
  <h2 class="pop-up-title"><?php the_field(pop_up_title); ?></h2>
  <div class="close">
    <img src="http://localhost/wordpress/wp-content/uploads/close.png" alt="close"/>
  </div>
  <div class="pop-left popup-section">
     <img src="<?php the_field(pop_up_left_section_backround); ?>" class="background"/>
     <div class="popup-text">
       <?php the_field(pop_left_text); ?>
     </div>
     <div class="cta">
       <a href="#" title="" class="pop-up-cta"><?php the_field(pop_left_cta); ?></a>
     </div>  
  </div>
  <div class="pop-right popup-section">
     <img src="<?php the_field(pop_up_right_section_backround); ?>" class="background"/>
     <div class="popup-text">
       <?php the_field(pop_right_text); ?>
     </div>
     <div class="cta">
       <a href="#" title="" class="pop-up-cta"><?php the_field(pop_right_cta); ?></a>
     </div>
  </div>
</div>
<!-- Pop up section end -->

<main class="main-content">
    <div id="primary" class="default-main">
        <div id="content" role="main">
        <div class="container">
                <div class="slider">
                <h2>All Posts</h2>
           <ul>
           <?php
           $wp_query = new WP_Query(array('post_type'=>'post', 'post_status'=>'publish', 'posts_per_page'=>-1)); 

            if($wp_query->have_posts() ): ?>
            <?php while ( $wp_query->have_posts() ) : $wp_query->the_post(); ?>
                       <li>
                        <a href="<?php the_permalink(); ?>">
                            <h2><?php the_title(); ?></h2>
                            <?php the_post_thumbnail(); ?>
                            </a>
                        </li>
                <?php endwhile; // end of the loop. ?>
            <?php endif; ?>
                </ul>
               </div>
             </div>
            </div><!-- #content -->
        </div><!-- #primary -->
        
        <div class="sidebar">
            <?php get_sidebar(); ?>
        </div>
    </main>

    <?php get_footer(); ?>
