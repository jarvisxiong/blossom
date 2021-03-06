package fr.mgargadennec.blossom.core.user;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.transaction.Transactional;

/**
 * Created by zoula_000 on 17/05/2017.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {DaoTestContext.class})
@Transactional
public class UserDaoImplTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void test() {

        User user = new User();
        user.setFirstname("F");
        user.setLastname("L");
        user.setPasswordHash("H");
        user.setIdentifier("I");
        user.setDescription("D");
        user.setEmail("E");
        userDao.create(user);

        User result = userDao.getByEmail("E");
        Assert.assertNotNull(result);
    }

}
