package fr.mgargadennec.blossom.ui.menu;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * Created by Maël Gargadennnec on 05/05/2017.
 */
@ControllerAdvice
public class MenuControllerAdvice {
  private final Menu menu;

  public MenuControllerAdvice(Menu menu) {
    this.menu = menu;
  }

  @ModelAttribute("menu")
  public Menu getMenu() {
    return menu;
  }

}
