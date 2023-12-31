package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driverDaoByLogin = driverService.findByLogin(login);
        if (password.equals(driverDaoByLogin.get().getPassword())) {
            return driverDaoByLogin.get();
        }
        throw new AuthenticationException("Login or Password is incorrect.");
    }
}
