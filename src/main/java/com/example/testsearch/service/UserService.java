package com.example.testsearch.service;


import com.example.testsearch.dto.UserDto;
import com.example.testsearch.mapper.UserMapper;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {

    private static final Logger logger = (Logger) LogManager.getLogger(SearchService.class);

    private UserMapper userMapper;

    @Autowired
    public UserService(UserMapper userMapper){
        this.userMapper = userMapper;
    }

    /* 회원가입 */
    public int addUser(UserDto userDto){
        int result = userMapper.addUser(userDto);
        return result;
    }

    /* 회원별 정보조회 */
    public UserDto getUserInfoByEmail(String useremail){
        UserDto userDto = userMapper.getUserInfoByEmail(useremail);

        return userDto;
    }

}
