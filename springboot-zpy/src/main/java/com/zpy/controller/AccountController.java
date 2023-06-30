package com.zpy.controller;

import cn.hutool.crypto.digest.DigestUtil;
import com.zpy.pojo.Account;
import com.zpy.service.impl.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class AccountController {
    @Autowired
    private AccountServiceImpl accountService;
    @RequestMapping("/hello")
    public String hello() {
        return "waterMainMenu";
    }

    @PostMapping("/login")
    public String login(String userName, String userPwd, Model model, HttpSession session) {
        boolean login = accountService.login(userName, userPwd);
        if (login) {
            session.setAttribute("currentUser", userName);
            return "waterMainMenu";
        } else {
            model.addAttribute("msg", "用户名或密码错误！");
            return "index";
        }
    }

    @RequestMapping("pwd")
    public String preUpdate() {
        return "modify";
    }

    @PostMapping("pwdUser")
    public String updatePwd(String userPwd, String newPwd, Model model, HttpSession session) {
        String currentUser = (String) session.getAttribute("currentUser");
        boolean login = accountService.login(currentUser, userPwd);
        if (login) {
            Account account = new Account();
            account.setUserName(currentUser);
            String newPassword = DigestUtil.md5Hex(newPwd);
            account.setUserPwd(newPassword);
            boolean b = accountService.updatePwd(account);
            if (b) {
                return "index";
            } else {
                model.addAttribute("loginFail", "修改密码失败");
            }
        } else {
            model.addAttribute("loginFail", "用户验证失败");
        }
        return "modify";
    }

}
