package mybatisgenerator;

import org.apache.ibatis.io.Resources;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class GeneratorSqlMaper {

	public void generator() throws Exception {
		List<String> warnings = new ArrayList<String>();
		boolean overwrite = true;
		/*指定 逆向工程配置文件*/
		InputStream in = Resources.getResourceAsStream("mybatisgenerator/generatorConfig.xml");
		ConfigurationParser cp = new ConfigurationParser(warnings);
		Configuration config = cp.parseConfiguration(in);
		DefaultShellCallback callback = new DefaultShellCallback(overwrite);
		MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config,
				callback, warnings);
		myBatisGenerator.generate(null);
		in.close();
	}
	public static void main(String[] args) throws Exception {
		try {
			GeneratorSqlMaper generatorSqlmap = new GeneratorSqlMaper();
			generatorSqlmap.generator();
			System.out.println("MyBatis  文件生成成功：实体类、Mapper.xml、Mapper.java");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
