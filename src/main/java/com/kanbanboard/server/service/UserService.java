package com.kanbanboard.server.service;

import com.kanbanboard.server.dto.UserDto;
import com.kanbanboard.server.exception.UserNotFoundException;

import java.util.List;
import java.util.Optional;

public interface UserService {
    public List<UserDto> getUsers();
    public Optional<UserDto> getUser(int id) throws UserNotFoundException;
    public UserDto addUser(UserDto userDto);
    public Optional<UserDto> updateUser(int id,UserDto updatedUserDto) throws UserNotFoundException;
    public void deleteUser(int id) throws UserNotFoundException;
    public UserDto login(UserDto userDto);

    public UserDto findByEmail(String email);
}
