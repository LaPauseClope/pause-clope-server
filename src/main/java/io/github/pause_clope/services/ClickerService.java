package io.github.pause_clope.services;

import io.github.pause_clope.dto.SaveRequest;
import io.github.pause_clope.entities.UserData;
import io.github.pause_clope.repositories.UserDataRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ClickerService {
    private final UserDataRepository userDataRepository;

    public ClickerService(UserDataRepository userDataRepository) {
        this.userDataRepository = userDataRepository;
    }

    public void postClicker(SaveRequest body) {
        userDataRepository.findByNickname(body.getNickname()).ifPresentOrElse(
                userData -> {
                    userData.setClicks(userData.getClicks() + body.getClicks());
                    userDataRepository.save(userData);
                },
                () -> userDataRepository.save(new UserData(body.getNickname(), body.getClicks()))
        );
    }

    public Optional<UserData> getByNickname(String nickname) {
        return userDataRepository.findByNickname(nickname);
    }
}
