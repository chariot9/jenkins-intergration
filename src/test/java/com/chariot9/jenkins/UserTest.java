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
}