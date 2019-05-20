package cc.ryanc.halo.utils;

import cn.hutool.crypto.SecureUtil;
import org.junit.Test;

/**
 * @author : RYAN0UP
 * @date : 2017/12/26
 * @version : 1.0
 * description:
 */
public class DemoUtilTest {

    @Test
    public void testZip(){
        //ZipUtils.unZip("/Users/ryan0up/Desktop/adminlog.html.zip","/Users/ryan0up/Desktop/");
    }

    @Test
    public void getpwd(){
        System.out.println( SecureUtil.md5("maomao1210"));

    }


}