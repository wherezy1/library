package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.dto.LoginDto;
import com.where.library.member.dto.UserDto;
import com.where.library.member.entity.UserEntity;
import com.where.library.member.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;


/**
 * 借阅人信息
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
@RestController
@RequestMapping("/member/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 通过电话 或者 用户名搜索 用户
     */

    /**
     * 更改个人信息
     */
    @PostMapping("/change")
    public R changeMessage(@RequestBody UserDto userDto) {
        return userService.changeMessage(userDto);
    }

    /**
     * 修改密码
     * @param passwords 旧密码 新密码
     */
    @PostMapping("/change/password")
    public R changPassword(@RequestBody String[] passwords) {
        return userService.changePassword(passwords[0], passwords[1]);
    }

    /**
     * 登录
     */
    @PostMapping("/login")
    public R login(@RequestBody LoginDto loginDto) {
        return userService.login(loginDto);
    }

    /**
     * 注册用户 直接访问
     * 注册成功，回调主页
     */
    @PostMapping("/register")
    public R register(@RequestBody UserDto userDto) {
        return userService.register(userDto);
    }


    /**
     * 登出
     */
    @RequestMapping("/logout")
    public R logout() {
        return userService.logout();
    }

    /**
     * 检车是否存在改用户名
     */
    @PostMapping("/check/phone")
    public R checkPhone(@RequestBody String phone) {
        return userService.checkPhone(phone);
    }

    /**
     * 检车密码是否正确
     */
    @PostMapping("/check/password")
    public R checkPhone(@RequestBody String[] password) {
        return userService.checkPassword(password[0]);
    }


    /**
     * 检车是否存在改用户名
     */
    @GetMapping("/check/{id}")
    public R checkId(@PathVariable Long id) {
        return userService.checkId(id);
    }

    /**
     * 检车是否存在该用户名
     */
    @PostMapping("/check/username")
    public R checkUsername(@RequestBody String[] username) {
        return userService.checkUsername(username[0]);
    }

    /**
     * 借书 通过bookIds
     */
    @PostMapping("/lend")
    public R lendBook(@RequestBody Long[] bookIds) {
        return userService.lendBookByIds(bookIds);
    }

    /**
     * 还书 通过bookIds
     */
    @PostMapping("/return")
    public R returnBook(@RequestBody Long[] bookIds) {
        return userService.returnBookByIds(bookIds);
    }

    /**
     * 获取用户详细信息
     */
    @GetMapping("/detail")
    public R getUserDetail() {
        return userService.getUserDetail();
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    // // @RequiresPermissions("member:user:list")
    public R list(@RequestBody Map<String, Object> params){
        PageUtils page = userService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    // // @RequiresPermissions("member:user:info")
    public R info(@PathVariable("id") Long id){
		UserEntity user = userService.getById(id);

        return R.ok().put("user", user);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // @RequiresPermissions("member:user:save")
    public R save(@RequestBody UserEntity user){
		userService.save(user);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // @RequiresPermissions("member:user:update")
    public R update(@RequestBody UserEntity user){
		userService.updateById(user);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // @RequiresPermissions("member:user:delete")
    public R delete(@RequestBody Long[] ids){
		userService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
