package com.chariot9.jenkins;

import org.hamcrest.core.Is;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserTest {

  @Test
  public void getName() {
    User user = new User("Trung", 26);
    assertThat(user.getName(), Is.is("Trung"));
  }

  @Test
  public void getAge() {
    User user = new User("Trung", 26);
    assertThat(user.getAge(), Is.is(26));
  }

  @Test
  public void getAgeAndName() {
    User user = new User("Trung", 26);
    assertThat(user.getName(), Is.is("Trung"));
    assertThat(user.getAge(), Is.is(26));
  }

  @Test
  public void getAgeAndName2() {
    User user = new User("Trung", 26);
    assertThat(user.getName(), Is.is("Trung"));
    assertThat(user.getAge(), Is.is(26));
  }

  @Test
  public void getAgeAndName3() {
    User user = new User("Trung", 26);
    assertThat(user.getName(), Is.is("Trung"));
    assertThat(user.getAge(), Is.is(26));
  }
}
